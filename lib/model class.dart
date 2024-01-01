class Product {
  String img1;
  String txt2;
  String txtg;
  String disc;
  double txt3;
  List<String> imgg;
  List<String> txtt;

  Product({
    required this.txtg,
    required this.img1,
    required this.txt2,
    required this.txt3,
    required this.disc,
    required this.imgg,
    required this.txtt,
  });
}

List<Product> product = [
  Product(
      txtg: "3/5",
      img1:
          "https://upload.wikimedia.org/wikipedia/en/4/4a/The_Flash_season_7.jpg",
      txt2: 'The Flash',
      txt3: 3.5,
      disc:
          "Barry Allen uses his super speed to change the past, but his attempt to save his family creates a world without super heroes, forcing him to race for his life in order to save the future.",
      imgg: [
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRQbZ7ZMBRiJbCdk8jI3lHYwgTGY3cxrS0qDdT4jgQIhMTKPZcT",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSS_AgJ9Xb_P771s7UPKbcvTJrljD3gKpFwbcKVDbMO6-efYrdk",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ5JcxNfgIAylAd_EPKya5Vx1P7bPlMbZgySJ-S1v-s-BmOupL",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTrjFGmGfMvnW6vR21baTWfleaclAffUQ4E1GKErd8GU3vhaDPA",
        "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/533952_v9_bb.jpg"
      ],
      txtt: [
        "Berry Allen",
        "Micheal Keaton",
        "Ben Affleck",
        "Sasha Calle",
        "Atje Traue"
      ]),
  Product(
      txtg: "5/5",
      img1:
          "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810",
      txt2: 'Avengers \nENDGAME',
      txt3: 5,
      disc:
          "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' action...",
      imgg: [
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRIuvFnoTiTlPDHGTOcHJmj976HG66eK4SYOvnhg3PWjgGBNE8o",
        "https://www.lifeandstylemag.com/wp-content/uploads/2021/11/scareltt-johansson-kids.jpg?crop=0px%2C186px%2C3327px%2C3327px&resize=408%2C408&quality=86&strip=all",
        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRFtcayZVuwosa6Akr6geXA23-36_npmrevK572LcTq5mc_cNiPbeR31PLu1zGUQZM-Q3VJyMHxi7xsyMU",
        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRmJfKpRg6LUb83lNmG-_lelOtXo_S1QAJ2PpY8SbKWrGi9eNO6Ua3thoiMxjn9oO4M2lvXp6_NOK6KYe8",
        "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRepnY3oAVKtX-tU6Gf5YgGNlpxONl_10qNibyZOJrUDQQUtuLrNoqOng5fEMfyjQiUx507ATlBbGWRQ9w",
      ],
      txtt: [
        "Robert Drowney",
        "Scarlet Johnson",
        "Micheal Loccisano",
        "Chris Evans",
        "Chris Hemsworth"
      ]),
  Product(
      txtg: "4/5",
      img1:
          "https://m.media-amazon.com/images/M/MV5BOTY2NzFjODctOWUzMC00MGZhLTlhNjMtM2Y2ODBiNGY1ZWRiXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg",
      txt2: 'Free Guy',
      txt3: 4,
      disc:
          "When Guy, a bank teller, learns that he is a non-player character in a bloodthirsty, open-world video game, he goes on to become the hero of the story and takes the responsibility of saving ...",
      imgg: [
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTyyBoYhVwx-m23M0dlzxJYoAAmIAVZSMnlK9ND_sYK_iq8-Yup",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXTq4Szz-j-QVS_qhu6-glRbQmqhVOmlnMRK6rvSN24u7uQ_wk",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSy3mH_GvSQD-WgE9jh9kXozIlntNF5iXlE7_mdVgNpA0fhUWUF",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRDGrSaiBUh96FCVWXSKNzV8Oim8-7mj5sa-xB7ez94wulpLiTD",
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRqwYTKRxOLb7i3TBpNSnbcC9Ww4_W49H9V-UjWo1c23Eq9IUd2"
      ],
      txtt: [
        "Ryan Rynolds",
        "Jodie Comer",
        "Joe Keery",
        "Taika Waititi",
        "Aaron W. Reed"
      ]),
  Product(
      txtg: "4/5",
      img1:
          "https://m.media-amazon.com/images/M/MV5BYThjYzcyYzItNTVjNy00NDk0LTgwMWQtYjMwNmNlNWJhMzMyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg",
      txt2: 'Batman VS \nSuperman',
      txt3: 4,
      disc:
          "Batman is manipulated by Lex Luthor to fear Superman. Superman´s existence is meanwhile dividing the world and he is framed for murder during an international crisis. The heroes clash and fo...",
      imgg: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ5JcxNfgIAylAd_EPKya5Vx1P7bPlMbZgySJ-S1v-s-BmOupL",
        "https://t0.gstatic.com/images?q=tbn:ANd9GcTzEMn9FI59qysZbAAnImz7GVhhx2Z2rd7xdyB5FXSnDh3YtbIa",
        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQngNIsqua1DsDvnOrY5U9_wTyNUYdCR0FbB5nVIlEnTrAUA0J_-ZmR_3RcGczS9a9x1YyqFGQa3WxBGsM",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQpWS3w2IkgJ6TxbZLJtYO5F5T1mvYCrA9bvC9XIp_Xl-Y314U6",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkxfFk-AJFuEWcIIg_TQoXDfTh453TrQ0_RtiliyFAvVpyLYBI"
      ],
      txtt: [
        "Ben Affleck",
        "Henry Cavill",
        "Jesse Eisenberg",
        "Gal Gadot",
        "Jeremy Irons"
      ]),
  Product(
      txtg: "5/5",
      img1:
          "https://m.media-amazon.com/images/M/MV5BYzFiZjc1YzctMDY3Zi00NGE5LTlmNWEtN2Q3OWFjYjY1NGM2XkEyXkFqcGdeQXVyMTUyMTUzNjQ0._V1_.jpg",
      txt2: 'Mission \nImpossible',
      txt3: 5,
      disc:
          "Ethan Hunt and his IMF team must track down a dangerous weapon before it falls into the wrong hands.",
      imgg: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQffM-p_sz-A-D547NGuSCDsOWOWOrXcvxz6f4SZ5yGcx5mtL4M",
        "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQ06RGhA6csD2k_Et0CGMRm2bOehV111VSxg5Ky8V6dbO821VGurOTEIO3-py_kfGgJT1w3wbmoUwI-vVM",
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS5Lu8fIZA3Eua2wJp5hjpzLCpId_2eM_8QbpaS5ql-yLDKow6P",
        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTT2WmeXrMcPTFAeHkOOsL3Z04RsiviHX3Z_ttPmFeI_1cGPseEUbWbG_VsNaGderxeTjB2PC4PFbvjitU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPBawoG78h3cTrtgnMGCnw1xwG0J3-2f1GtjCB90OcQG3UDl7e"
      ],
      txtt: [
        "Tom Cruise",
        "Hayley Atwell",
        "Rebecca Ferguson",
        "Vanessa Kirby",
        "Pom Klementieff"
      ]),
  Product(
      txtg: "4/5",
      img1:
          "https://m.media-amazon.com/images/M/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
      txt2: 'Thor Love \n& Thunder',
      txt3: 4,
      disc:
          "Thor enlists the help of Valkyrie, Korg and ex-girlfriend Jane Foster to fight Gorr the God Butcher, who intends to make the gods extinct.",
      imgg: [
        "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRepnY3oAVKtX-tU6Gf5YgGNlpxONl_10qNibyZOJrUDQQUtuLrNoqOng5fEMfyjQiUx507ATlBbGWRQ9w",
        "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTxmCA9jJ2MrULWgxOwNuZ9Bki9s0G1wKMoVZRquX1t2K6cZfcH7Bm_ueGnkj1GndH_RfDQGlcQrpn4ZYI",
        "https://m.media-amazon.com/images/M/MV5BYzU0ZGRhZWItMGJlNy00YzlkLWIzOWYtNDA2NzlhMDg3YjMwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg"
            "https://assets.telegraphindia.com/telegraph/2023/Nov/1701233596_taika-waititi.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR9vkFVOe38mBGNFoCpawGMCz0x6E5PlwuVunfMR59f-lwm49Q"
      ],
      txtt: [
        "Chris Hemsworth",
        "Christian Bale",
        "Natalie Portman",
        "Taika Waititi",
        "Tessa Thompson"
      ]),
];

class Product2 {
  String tot;
  String imo;
  String disc1;
  String stt;
  double txtf;
  List<String> imgg1;
  List<String> txtt1;

  Product2({
    required this.tot,
    required this.txtf,
    required this.imo,
    required this.disc1,
    required this.imgg1,
    required this.txtt1,
    required this.stt,
  });
}

List<Product2> product2 = [
  Product2(
      imo:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEWXeXByOfW2i-o2AzdgYA-dNvlUdZUMgchw&usqp=CAU",
      tot: "Madame Web",
      disc1:
          "Cassandra Webb is a New York City paramedic who starts to show signs of clairvoyance. Forced to confront revelations about her past, she must protect three young women from a mysterious adve..",
      imgg1: [
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQBMFtWCKXhGmpEJ6rMDSs4vMHUTI0asaz70dbNZ6uPYIJIjiMR",
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ2mXngMgUJw8byy774-D0GjVsGOopWmhQhvS1GqgmAg5DIvLI5",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVijS0y99CpgRZVbXDVLxIpii4Mzbn6Z8zUXy94g8HWRZ1uhIQ",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6YMtyIrZMv8p4TPnX0x7Dklr7k_cWPY_3KbhhYB5ILbfevQ-a",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTOHFfDNUoLVHeOA6pYNbXe8mM8G8SS-VRg11HQEGaViW5ju_2q"
      ],
      txtt1: [
        "Dakota Johnson",
        "Sydney Sweeney",
        "Isabela Merced",
        "Emma Roberts",
        "Adam Scott"
      ],
      stt: '-',
      txtf: 0),
  Product2(
      imo:
          "https://variety.com/wp-content/uploads/2023/11/imaginary.jpg?w=1000&h=563&crop=1",
      tot: "Imaginary",
      disc1:
          "A woman returns to her childhood home to discover that the imaginary friend she left behind is very real and unhappy that she abandoned him.",
      imgg1: [
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSm-aLa70LO-utEEoyJDW-B8wKxiyCBLem2IlXD3dCLMyiIVmwd",
        "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTU45Y1kOho5S7MeyZXCy63EdTlTl1nhsNjTmyAdiqzYz6auYsnest8rZiGfsIK0moxeV9dxSNUiVPBlMI",
        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSRF1p6G1XxUwHUw3M7WeXb4UuLQ2h3yYAmuRpcGqigJWvq-51w58JWGZZ76UchWZBUhhqXiJGIy9uEqm8",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKA1zV8WC_WmptNo9O3xqoKp_UmU_CKXIxlNfaoLffQHLW0RZE",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTKnOUjhiohJE-7QM_niBpr4BBNnhDwa5XGJXxQUyOepOGOsKOC"
      ],
      txtt1: [
        "DeWanda Wise",
        "Matthew Sato",
        "Taegen Burns",
        "Betty Buckley",
        "Tom Payne"
      ],
      stt: '-',
      txtf: 0),
  Product2(
      imo:
          "https://cdn.arstechnica.net/wp-content/uploads/2023/11/ghostbust-poster.jpg",
      tot: "Ghost Busters",
      disc1:
          "When the discovery of an ancient artifact unleashes an evil force, Ghostbusters new and old must join forces to protect their home and save the world from a second ice age.",
      imgg1: [
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQfyIfkKNyX7kk6kBgQd3-kG8POtAKjo9HNb80axLrF3ulxavx-",
        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSPDVe8yNmt9lPraE4UMIOQs69RUym_6GKkiNoQlXbGScPkb6Wtl_3Y_wT2QKvldg1MVMR8e7VMej_TXLI",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Mckenna_Grace_2023_6.jpg/800px-Mckenna_Grace_2023_6.jpg",
        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRtaz66fNbkgGc_IuMcbMyHc3hVxxSug3oNLLZH3dL7WH0umOAOCvQs4oUtjb2DHQU7shS6DRX6a0rCeAU",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQmvs1LQduHK-O-8agbu4rLI98KG5WaJ21FUOSSrOVfrKXQmTER"
      ],
      txtt1: [
        "Bill Murray",
        "Dan Aykroyd",
        "Mckenna Grace",
        "Ivan Reitman",
        "Paul Rudd"
      ],
      stt: '-',
      txtf: 0),
  Product2(
      imo:
          "https://m.media-amazon.com/images/M/MV5BNDNmYTQzMDEtMmY0MS00OTNjLTk4MjItMDZhMzkzOGI3MzA0XkEyXkFqcGdeQXVyNjk5NDA3OTk@._V1_.jpg",
      tot: "Planet of Apes",
      disc1:
          "Many years after the reign of Caesar, a young ape goes on a journey that will lead him to question everything he's been taught about the past and make choices that will define a future for a...",
      imgg1: [
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRygamFtt2IRxGl-NY7VN5G7lK-zQ4CaUt_52kN-FNZPDRSTkQT",
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQppzODlHLYsOQdfWnJ_Oo4cvffq-jQqxukFuXESkAsElTUEh3_",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJHtW24PhouB0kyiTau_HztB_1AI7hdJYQ4FcRx5iSqSL2ZV8G",
        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQ9jhp0tDWMYhH1WhcbqZOxWFzlGXKm8gg5CwClNVuTyeIoLg3yys0Dcqvn87GMLZxJEjQwTFMuoiFDZT0",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiSA4blsx_9LVPweNhYNk-a96GQkrMfgg1GZ3gn0KAbTO4qo9S"
      ],
      txtt1: [
        "Freya Allan",
        "Owen Teague",
        "Dichen Lachman",
        "Kevin Durand",
        "Peter Macon"
      ],
      stt: '-',
      txtf: 0),
  Product2(
      imo:
          "https://m.media-amazon.com/images/M/MV5BYWJkODE3NjMtNTUzMi00MDg4LTk3NTYtZDEyZmU5OTFhYTBhXkEyXkFqcGdeQXVyMTA1NTQ5Nzcz._V1_.jpg",
      tot: "The Garfield",
      disc1:
          "Garfield is about to go on a wild outdoor adventure. After an unexpected reunion with his long-lost father - the cat Vic - Garfield and Odie are forced to abandon their pampered life to join...",
      imgg1: [
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTuR7A_ChkZt4iaMKIB7c8pCg0ZEhxQXadZam7r6EtEavu8VhXg",
        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcR2dgLtDgjkCaYbQ4dM1_ChDGn099lViVzaT5ieUhkow-XQLoi8uxGY-WpmY8TiWXDFpWq84hi0k2PIAgQ",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSgFTRyS3RHqzvItNwecXF_-szMWsKuqt8qCTMiMpCPv_263Ba_",
        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSWwnkWOFPFP_GpGFf4Kt7d4cKia7pxU7_u_0MTDwuJgGHub8g8i_qLUb6VpSxlJqGjTksDqWPtCwPXEEw",
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRYsCV1AiX9wUywIEtYrrhLX-o7Ti37BKCQOMufnwYvWyAOtYRd"
      ],
      txtt1: [
        "Chris Pratt",
        "Samuel L. Jackson",
        "Nicholas Hoult",
        "Ving Rhames",
        "Hannah"
      ],
      stt: '',
      txtf: 0),
  Product2(
      imo:
          "https://m.media-amazon.com/images/M/MV5BZmE5MTI2ZGQtNjBkZC00ZWEyLWEwOWYtNmI4ZGExMGZmNDI2XkEyXkFqcGdeQWFsZWxvZw@@._V1_.jpg",
      tot: "Argylle",
      disc1:
          "An introverted spy novelist is drawn into the activities of a sinister underground syndicate.",
      imgg1: [
        "https://imageio.forbes.com/specials-images/imageserve/639b4bfacfcc8535e812479b/Premiere-Of-Warner-Bros--Pictures---Justice-League-/0x0.jpg?crop=2720,1531,x0,y93,safe&height=400&width=711&fit=bounds",
        "https://m.economictimes.com/thumb/msid-102360358,width-1200,height-900,resizemode-4,imgsize-49050/dua-lipa-faces-20-million-copyright-claims-over-levitating-song-know-details.jpg",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRijvWm9Nd5afrrOqpeaeqrWV9g80ycaH87KCG8heBTToxkNhZJ",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC_9El3EDabBDQJVdlO2cHKGKkpNZux6U8NjuuaxPas3Swh4wq",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTs4vp8UtoqQ5CwzuPICHM0RALmrmdCt0EkQzIxdHUuNDCxmvYo"
      ],
      txtt1: [
        "Henry Cavill",
        "Dua Lipa",
        "Bryce Dallas",
        "Sam Rockwell",
        "John Cena"
      ],
      stt: '-',
      txtf: 0),
];

class Product1 {
  String img2;
  String txt4;
  String disc2;
  List<String> imgg2;
  List<String> txtt2;

  Product1({
    required this.txt4,
    required this.img2,
    required this.disc2,
    required this.txtt2,
    required this.imgg2,
  });
}

List<Product1> product1 = [
  (Product1(
      txt4: "Shazzam",
      img2:
          "https://image.tmdb.org/t/p/original/jTcS6v2ZLIrKcDCXpIuipX6iKzx.jpg",
      disc2:
          "A newly fostered young boy in search of his mother instead finds unexpected super powers and soon gains a powerful enemy.",
      txtt2: [
        "Zachary Levi",
        "Asher Angel",
        "Grace Caroline",
        "Mark Strong",
        "Jack Dylan"
      ],
      imgg2: [
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTxdgTjqYg7QpqXWfkp6KszXUJHAtiN68eE0JPdE457TFaHjXeq",
        "https://www.themoviedb.org/t/p/w500/9v1mS2Rrocl2hOtNe9Gte3SS4Ch.jpg",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSX9Y54yp7TwNi2cRlkIX3MueDb4CbnJIcVNOAphciXU5fb1hSl",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSIDk2P1AIHFAPfyqQeK7PPbmCAxWQ9xy2VdZakAiDIPm4YDeZ",
        "https://images.squarespace-cdn.com/content/v1/5e13fa32998cfc5c7d0789ac/1625105303201-BXNW5TO0H1F6B0BB158J/311751-A7-011-053_RT.jpg"
      ])),
  (Product1(
      txt4: "Little Mermaid",
      img2:
          "https://th.bing.com/th?id=ODL.a4da049f8129c9460191466158a841d7&w=135&h=201&c=10&rs=1&qlt=90&o=6&dpr=1.5&pid=13.1",
      disc2:
          "A young mermaid makes a deal with a sea witch to trade her beautiful voice for human legs so she can discover the world above water and impress a prince.",
      txtt2: [
        "Halle Bailey",
        "Javier Bardem",
        "Melissa McCarthy",
        "Jonah Hauer",
        "Jessica Alexander"
      ],
      imgg2: [
        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSbECDs-HUdTnSHS-YQdeOHrwJ6YLLjefyJcY59MLqvq-hSELHT-mxAWbHb4qiciVF6VDcwgxzhehO7b2g",
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQa_9byL4FDaEYRcxDzd2TmRF0dIvJz9RrHYTgkfwI2wQqqTHMk",
        "https://media.glamour.com/photos/645ba877df35cea1cbb2f943/master/w_1600%2Cc_limit/1488543384",
        "https://www.unitedagents.co.uk/sites/default/files/thumbnails/image/thumbnailjonahhauer-king-9.jpg",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRXYxZm29HHPZlJ_O_YBqhVZIGgsvNAbXAneah5RMK37nGW3DwC",
      ])),
  (Product1(
      txt4: "Guardians of \nthe Galaxy",
      img2:
          "https://th.bing.com/th?id=ODL.4ca6ffabef02ae9dc161ede62ba1710c&w=135&h=201&c=10&rs=1&qlt=90&o=6&dpr=1.5&pid=13.1",
      disc2:
          "Still reeling from the loss of Gamora, Peter Quill rallies his team to defend the universe and one of their own - a mission that could mean the end of the Guardians if not successful.",
      txtt2: [
        "James Gunn",
        "Chris Pratt",
        "Zoe Saldana",
        "Vin Diese",
        "Sean Gunn"
      ],
      imgg2: [
        "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTKXG7dDgOaGvaWKeRj6Mbd6Z6hf98ZaL0pQ_cmbl4FlsbwZajIaXSEd7W_ElBFh9YL9OP3jclwBEUTd08",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTuR7A_ChkZt4iaMKIB7c8pCg0ZEhxQXadZam7r6EtEavu8VhXg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Donnie_Yen_20230319.jpg/640px-Donnie_Yen_20230319.jpg",
        "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQA19qnpdX2xLIqEYXBCleHbxL2qMyDq1c5TFQauVxpSMblvNYx4AvTOlzzswrPV0Z_YQDtx9Y37ILX7Yc",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRMD7bR4brNSd-G0UjbGcTxJCHWqLhk6enaFEuPe5NKFoRT5dpD"
      ])),
  (Product1(
      txt4: "John Wick",
      img2:
          "https://www.bing.com/th?id=OIP.c2J92N4Qng_vHaYfsyhBsAHaLH&w=120&h=185&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
      disc2:
          "John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that tur...",
      txtt2: [
        "Keanu Reeves",
        "Scott Adkins",
        "Donnie Yen",
        "Bill Skarsgård",
        "Lance Reddick"
      ],
      imgg2: [
        "https://m.media-amazon.com/images/M/MV5BNGJmMWEzOGQtMWZkNS00MGNiLTk5NGEtYzg1YzAyZTgzZTZmXkEyXkFqcGdeQXVyMTE1MTYxNDAw._V1_.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/f/f3/Scott_Adkins_%2853319300983%29.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/f/f3/Scott_Adkins_%2853319300983%29.jpg",
        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSskbwuvk9OIyqphZ4qPlt3Xb5taB_FlbMGJiLtgJmpcTs7gSJITYSACAM9sFpiTZdy2sJdzVFiOl1fxz0",
        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSJx4G6T1wswfB-iJjmRWIxuFI_ktmf76r5uYBezjDJ1Q-QjaPGcwS19HPC9qiPcmlAeAcb4FUxU2FAjHU"
      ])),
  (Product1(
      txt4: "Transformers",
      img2:
          "https://th.bing.com/th?id=ODL.6b41caa62f4288255857bc7349ff1dc7&w=135&h=201&c=10&rs=1&qlt=90&o=6&dpr=1.5&pid=13.1",
      disc2:
          "During the '90s, a new faction of Transformers - the Maximals - join the Autobots as allies in the battle for Earth.",
      txtt2: [
        "Anthony Ramos",
        "Dominique",
        "Peter Cullen",
        "Liza Koshy",
        "Pete Davidson"
      ],
      imgg2: [
        "https://people.com/thmb/WnHjM-_SCdMp9elVZTFUs8ktYdk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(722x253:724x255)/Anthony-Ramos-songs-092123-tout-e00b4a3d0868496ba7de96cba6f7c574.jpg",
        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQ-NHcfPv0eU98dhP946qGDWafC0eJ9pfvmd3DBtZnel8wPzsxCNmzfNwruEQOS74n4-HT4Q-Q6K1UcCZ4",
        "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQnJyQSHYCheLNHT8NsPAyS7FHNsGqbu4_Wewbjrpu8T1U-a5gkA1gj14z8x7k_MmNbSnJhUbBJ5RC4PHA",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRvw0zQQ25ekpxxzx-PSJcJ3mdxBcSgI9QAUW0mL57gs9e_QLwr",
        "https://www.usmagazine.com/wp-content/uploads/2018/10/UsWeekly-Celebrity-Biography-Pete-Davidson.jpg?w=800&h=1421&crop=1&quality=55&strip=all"
      ])),
  (Product1(
      txt4: "Barbie",
      img2:
          "https://th.bing.com/th?id=ODL.b81b250a3aba996cef6db5c4c5bdd89f&w=135&h=201&c=10&rs=1&qlt=90&o=6&dpr=1.5&pid=13.1",
      disc2:
          "Barbie suffers a crisis that leads her to question her world and her existence.",
      txtt2: [
        "Margot Robbie",
        "Ryan Gosling",
        "Will Ferrell",
        "Emma Mackey",
        "Simu Liu"
      ],
      imgg2: [
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSVT1-ut6gp5-jPasVSrIzEjdRYUnpIx5itS7if35hd_a61YUoK",
        "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTmjFkykICN_S_Uoywm_Km95ZG0nhpIB-lFp6FZeSqx3nzUrT0d-0QVEJgBd1si-7skiZU0FbOaD0a26PE",
        "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRbkTGRXWAj8fbVNm1aa_ZS5DFnL5vrXB1QyBK3nKx-talvsLdPYEJ1buNHyccCyWZBc6or3b-QJU2eulU",
        "http://t2.gstatic.com/images?q=tbn:ANd9GcQL-pO3gk2gdtCYTNwJQXw1gzQv9L2qSMwF4N7teXX4VehY0OJv7kdPSX6sRw7fsKmgS8QADg",
        "https://static.independent.co.uk/2022/05/30/14/Simu%20Liu%20author%20photo.jpg"
      ])),
];

class Subsr {
  String main;
  String sub;

  Subsr({
    required this.main,
    required this.sub,
  });
}

List<Subsr> subsr = [
  (Subsr(main: "1 Month Free", sub: r"Next 5$/month")),
  (Subsr(main: "3 Months", sub: r"5$/month")),
  (Subsr(main: "12 Month", sub: r"50$/month"))
];

class Cardr {
  String img;
  String nam;

  Cardr({
    required this.img,
    required this.nam,
  });
}

List<Cardr> card = [
  (Cardr(
    img: "images/master.png",
    nam: "Master Card",
  )),
  (Cardr(
    img: "images/payp.png",
    nam: "Pay Pal",
  )),
  (Cardr(
    img: "images/visa.png",
    nam: "Visa",
  )),
  (Cardr(
    img: "images/apple.png",
    nam: "Apple Pay",
  )),
];
