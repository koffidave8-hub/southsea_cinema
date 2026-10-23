import 'package:southsea_cinema/models/movies.dart';

class MovieRepository {
  List<Movies> getMovies() {
    return const [
      Movies(
        id: 'Kill_Bill_TWBA',
        name: 'Kill Bill: The Whole Bloody Affair',
        description:'THE 4TH FILM BY QUENTIN TARANTINO. UNCUT, UNRATED, AND SHOWN IN ITS ENTIRETY. A former assassin, known simply as The Bride, wakes from a coma four years after her jealous ex-lover Bill attempts to murder her on her wedding day. Fueled by an insatiable desire for revenge, she vows to get even with every person who contributed to the loss of her unborn child, her entire wedding party, and four years of her life. After devising a hit list, The Bride sets off on her quest, enduring unspeakable injury and unscrupulous enemies.',
        dateTime:[['Friday 16 oct 2026', '15:00']],
        ticketPrice: 7.5,
        imagePath:'assets/images/KillBillTheWholeBloddyAffair.jpg',
      ),
      Movies(
        id: 'Sympathy_for_Mr.V',
        name: 'Sympathy for Mr. Vengeance',
        description:'REVENGE WAS NEVER THIS SWEET. A deaf man and his girlfriend resort to desperate measures in order to fund a kidney transplant for his sister. Things go horribly wrong, and the situation spirals rapidly into a cycle of violence and revenge.',
        dateTime:[['Saturday 17 oct 2026', '17:30']], 
        ticketPrice: 6.5,
        imagePath:'assets/images/SympathyForMr.Vengance.jpg',
      ),

    ];
  }
}