import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,bottom: 20,left: 16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.end,
       children: [
          ListTile(
            title:  Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text('Note Title',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
            
            subtitle: Text('Note Content Whth mahmoud badawy',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,size: 32,),),
          ),
           Padding(
             padding: const EdgeInsets.only(right: 10),
             child: Text('27.Aug.2024',style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),),
           ),
       ],
     )
      
    );
  }
}


