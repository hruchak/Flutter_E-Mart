import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/our_button.dart';




class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key,required this.title}) : super (key : key );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline,))
        ],
      ),
      body: Column(
        children:[
          Expanded(
            child: Padding(
             padding :const EdgeInsets.all(8) ,
            child :SingleChildScrollView(
              child: Column(
                children: [




                  VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    aspectRatio: 16/9,

                    itemCount: 3, itemBuilder: (context,index){
                    return Image.asset(imgFc5, width: double.infinity,
                    fit: BoxFit.cover,);
                  }),

                  10.heightBox,
                  title!.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  VxRating(onRatingUpdate: (value){

                  },normalColor: textfieldGrey,selectionColor: golden,maxRating: 5,
                   count:5,
                   size: 25,stepInt: true,),
                   10.heightBox,
                   "Rs.30,00".text.color(redColor).fontFamily(bold).size(18).make(),
                   10.heightBox,
                    Row(
                      children: [
                        Expanded (child: Column(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "seller".text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            "In House Brands".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
                          ],
                        )),
                      const  CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.message_rounded,color: darkFontGrey,),
                        ),
                      ],
                    ).box.height(60).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                    
              //colors section
             20.heightBox,
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Color:".text.color(textfieldGrey).make(),
                      ),
                      Row(
                        children: List.generate(
                          3, (index) => 
                          VxBox().size(40,40).color(Vx.randomPrimaryColor)
                          .margin(const EdgeInsets.symmetric
                          (horizontal:4)).roundedFull.make()
                           ),
                           ),

                    //quantity row
                    Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Quantity:".text.color(textfieldGrey).make(),
                      ),
                      Row(
                        children:[
                          IconButton(onPressed: (){

                          }, icon: const Icon(Icons.remove)),
                          "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                           IconButton(onPressed: (){

                          }, icon: const Icon(Icons.add)),
                          10.heightBox,
                          "(0 available)".text.color(textfieldGrey).make()

                        ],
                      ),
                      Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: "Total:".text.color(textfieldGrey).make(),
                      ),
                      "Rs.0.00".text.color(redColor).size(16).fontFamily(bold).make(),

                     








                      
                    ],
                  ).box.padding(const EdgeInsets.all(8)).make(),
                ],
              ).box.shadowSm.make(),
               
                ],
               
               
               
               
               
              )],
              ),



//desc

10.heightBox,
"description".text.color(darkFontGrey).fontFamily(semibold).make(),
10.heightBox,
"this is a dummy item".text.make()





                ],
            
            
            )),
        
            ),
          ),
           SizedBox(
            width: double.infinity,
            height:60 ,
            child: ourButton(
              color: redColor,
              onPress: (){},
              textColor: whiteColor,
              title: "Add to cart"
            ),
          ),
        ],
      ));
  }
}