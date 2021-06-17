import 'package:flutter/cupertino.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_image.dart';
import 'package:flutter_app_e_commere_design/ui/widget/swiper/custom_pagination_builder.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
List<String> itemList=[AppImage.startBackGround,AppImage.startBackGround,AppImage.startBackGround];
class AppSwiper extends StatefulWidget {
  @override
  _AppSwiperState createState() => _AppSwiperState();
}

class _AppSwiperState extends State<AppSwiper> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
        itemCount: 3,
        itemBuilder: (BuildContext context,int index){
          return Column(
            children: [
              Container(
                height: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(itemList[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          );
        },
        pagination:new SwiperPagination(
          builder: CustomPaginationBuilder()
        ),
        )
    ;
  }
}
