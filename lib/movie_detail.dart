import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final Map movie;

  const MovieDetail({super.key, required this.movie});

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {

  bool added = false;

  void toggleAdd(){
    setState(() {
      added = !added;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.movie["title"]),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Image.network(widget.movie["image"]),

            const SizedBox(height: 15),

            Text(
              widget.movie["title"],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text("Tahun: ${widget.movie["year"]}"),
            Text("Genre: ${widget.movie["genre"]}"),
            Text("Rating: ${widget.movie["rating"]}"),

            const SizedBox(height: 20),

            const Text(
              "Ini adalah halaman detail film.",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,

              child: OutlinedButton(

                style: OutlinedButton.styleFrom(

                  backgroundColor:
                      added ? Colors.blue : Colors.white,

                  side: BorderSide(
                    color: added ? Colors.blue : Colors.grey,
                    width: 2,
                  ),

                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),

                ),

                onPressed: toggleAdd,

                child: Text(

                  "Tambahkan ke Daftar",

                  style: TextStyle(
                    fontSize: 16,
                    color: added ? Colors.white : Colors.black,
                  ),

                ),

              ),
            )

          ],
        ),
      ),

    );

  }
}