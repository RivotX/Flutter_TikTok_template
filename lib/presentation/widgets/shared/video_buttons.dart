import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tik_tok/config/helpers/human_formats.dart';
import 'package:flutter_tik_tok/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({
    super.key,
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          iconColor: Colors.red,
          iconData: Icons.favorite,
          value: video.likes,
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          iconData: Icons.remove_red_eye_outlined,
          value: video.views,
        ),
        const SizedBox(height: 20),

        SpinPerfect(
          duration: const Duration(milliseconds: 4000),
          infinite: true,
          child: const _CustomIconButton(
            iconData: Icons.play_circle_outlined,
            value: 0,
          ),
        ),
        // Puedes agregar más botones aquí si es necesario
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, color: color, size: 30),
        ),
        if (value > 0)
          Text(
            HumanFormats.humanReadableNumber(value.toDouble()),
            style: const TextStyle(color: Colors.white),
          ),
      ],
    );
  }
}
