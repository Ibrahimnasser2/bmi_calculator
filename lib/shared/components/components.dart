import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget default_button({

  double width= double.infinity,
  Color back_ground= Colors.blue,
   required Function function ,
  required String text,


}) =>Container(
width:width,
color: back_ground,
child: MaterialButton(
child: Text(text,style: TextStyle(
fontSize: 20,color: Colors.white),),
  onPressed: (){
    function();
  } ,


),
);



Widget default_Text_form({

 required TextEditingController controller,
  required  TextInputType textInputType,
  required String labelText,
  required IconData prefixIcon,
  IconButton? suffixIcon,
  bool ispassword =false,
  Function? ontap,
  Function? onchange,


}) =>TextFormField(
controller: controller ,
keyboardType: textInputType,
onTap: ontap!(),
  onChanged:(value){onchange!(value);},
onFieldSubmitted: (String value){
print(value);
},
validator: (value){
if(!(value!.isEmpty)){
return null;
}
return("not valid");
} ,
decoration: InputDecoration(
border: OutlineInputBorder(),

labelText: labelText ,
prefixIcon: Icon( prefixIcon),
  suffixIcon:   suffixIcon,

) ,
  obscureText: ispassword,


);













Widget my_seperatorr()=>Container(
width: double.infinity,
height: 1,
color: Colors.grey[200],
);


void navigate_to(context,widget){
   Navigator.push(
      context, MaterialPageRoute(builder: (context)=>widget)

  );
}

Widget camper()=>Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(

    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Text("Developed by:",style: TextStyle(

          color: Colors.teal,

          fontSize: 20,

          fontWeight: FontWeight.w900



      )),

      SizedBox(width: 5,),

      Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Row(



            children: [

              Text("Camper 01153421455"),

              Icon(Icons.contact_page_outlined,color: Colors.green,)

            ],

          ),



        ],

      ),

    ],

  ),
);