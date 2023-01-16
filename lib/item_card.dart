import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  final String product;
  final int price;
  //// Pointer to Update Function
  final Function? onUpdate;
  //// Pointer to Delete Function
  final Function? onDelete;

  const ItemCard(this.product, this.price,
      {super.key, this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  //Menampilkan Nama
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(product,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 16)),
                ),
                //Menampilkan Usia

                Text(
                  "Harga $price Tahun",
                  style: GoogleFonts.poppins(),
                )
              ],
            ),
            Row(
              //Icon Edit
              children: [
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    if (onUpdate != null) onUpdate!();
                  },
                ),
                //icon Delete
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Color.fromARGB(255, 7, 169, 32),
                  ),
                  onPressed: () {
                    if (onDelete != null) onDelete!();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
