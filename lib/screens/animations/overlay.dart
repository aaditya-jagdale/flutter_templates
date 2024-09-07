import 'package:boilerplate/widgets/fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OverLayAnimation extends StatefulWidget {
  const OverLayAnimation({super.key});

  @override
  State<OverLayAnimation> createState() => _OverLayAnimationState();
}

class _OverLayAnimationState extends State<OverLayAnimation> {
  bool isVisible = false;
  final GlobalKey overlayKey = GlobalKey(debugLabel: 'overlayKey');
  OverlayEntry? entry;

  void _toggleOverlay(BuildContext context) {
    if (isVisible) {
      _removeOverlay();
    } else {
      _showOverlay(context);
    }
  }

  void _showOverlay(BuildContext context) {
    final RenderBox renderBox =
        overlayKey.currentContext!.findRenderObject() as RenderBox;
    final Size size = renderBox.size;
    final Offset position = renderBox.localToGlobal(Offset.zero);

    entry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTap: _removeOverlay,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            left: position.dx - (120 - size.width) / 2,
            top: position.dy + (size.height + 10),
            child: Animate(
              effects: [
                FadeEffect(duration: 300.milliseconds),
                ScaleEffect(duration: 300.milliseconds),
              ],
              child: SizedBox(
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text('Hello'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context)!.insert(entry!);
    setState(() {
      isVisible = true;
    });
  }

  void _removeOverlay() {
    entry?.remove();
    entry = null;
    setState(() {
      isVisible = false;
    });
  }

  @override
  void dispose() {
    entry?.remove();
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      body: Center(
        child: SizedBox(
          key: overlayKey,
          height: 64,
          width: 64,
          child: IconButton.filled(
            onPressed: () => _toggleOverlay(context),
            icon: const Icon(Icons.touch_app),
          ),
        ),
      ),
    );
  }
}
