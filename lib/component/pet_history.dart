import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> entries = <String>[
  'รับยารักษาไรหู',
  'ตรวจสุขภาพประจำปี',
  'ฉีดวัคซีนโรคหวัดแมว',
];

final List<String> time = <String>[
  '14 ก.พ. 2567 14:00 น.',
  '12 ก.พ. 2567 15:00 น.',
  '10 ก.พ. 2567 16:00 น.',
];

class PetHistory extends StatelessWidget {
  const PetHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 50,
          child: Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.timer_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                '${time[index]}',
                style: GoogleFonts.notoSansThai(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400),
                    color: const Color.fromARGB(179, 0, 0, 0)),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
