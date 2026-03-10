import 'package:flutter/material.dart';
import 'movie_detail.dart';

class MovieListPage extends StatelessWidget {

  final List movies = [

    {
      "title": "Avengers Endgame",
      "year": "2019",
      "genre": "Action",
      "rating": "8.4",
      "image":
      "https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg"
    },

    {
      "title": "Interstellar",
      "year": "2014",
      "genre": "Sci-Fi",
      "rating": "8.6",
      "image":
      "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg"
    }

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Daftar Film"),
      ),

      body: ListView.builder(

        itemCount: movies.length,

        itemBuilder: (context, index) {

          var movie = movies[index];

          return ListTile(

            leading: Image.network(
              movie["image"],
              width: 50,
            ),

            title: Text(movie["title"]),

            subtitle: Text(
                "${movie["year"]} • ${movie["genre"]}"),

            trailing: Icon(Icons.arrow_forward),

            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MovieDetail(movie: movie),
                ),
              );

            },

          );

        },

      ),

    );

  }
}