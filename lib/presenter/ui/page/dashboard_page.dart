import 'package:flutter/material.dart';
import 'package:vasscom_test_project/domain/uimodel/product.dart';
import 'package:vasscom_test_project/domain/uimodel/service.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/app_bar.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/card_product.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/card_service.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/direct_notification.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/drawer.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/filter.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/header.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/poster.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/search_input.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/tab.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiKitAppBar(),
      endDrawer: const UiKitDrawer(),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 25),
            child: UiKitHeader(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: UiKitPoster(
              title: 'Layanan Khusus',
              description: 'Tes Covid 19, Cegah Corona Sedini Mungkin',
              actionTitle: 'Daftar Tes',
              assets: 'assets/image/img_special_services.png'
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: UiKitPoster(
              title: 'Track Pemeriksaan',
              description: 'Kamu dapat mengecek progress pemeriksaanmu disini',
              actionTitle: 'Track',
              assets: 'assets/image/img_track.png',
              isRightOrientation: true
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40),
            child: UiKitSearchInput(),
          ),
          const UiKitFilter(
            tabs: [
              'All Product',
              'Layanan Kesehatan',
              'Alat Kesehatan'
            ],
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: UiKitCardProduct(
                        data: ProductUiModel(
                            4.5,
                            'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvczcwLWppci0wMDk4OC1jaGltXzEucG5n.png?s=Z9SPkFN_VwMlT02y13WANqcBBg8SsN5VSoRc2eehiok',
                            'Suntik Steril',
                            100000
                        )
                    ),
                  );
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Text(
              'Pilih Tipe Layanan Kesehatan Anda',
              style: UiKitTheme.textTheme(context).titleLarge,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40),
            child: UiKitTabs(
              tabs: [
                'Satuan',
                'Paket Pemeriksaan'
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: UiKitCardService(
                      data: ServiceUiModel(
                          'https://doclandmed.com/upload/clinic/photo/3c9543ca54fe6c37b44b03d05e7e72e7.jpg',
                          'PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
                          1400000,
                          'Lenmarc Surabaya',
                          'Dukuh Pakis, Surabaya'
                      )
                  ),
                );
              }
            ),
          ),
          const UiKitDirectNotification()
        ],
      ),
    );
  }

  _DashboardPageState();
}
