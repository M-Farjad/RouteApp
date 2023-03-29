class UsersData {
  static List<String> usersType = const ['Members', 'Drivers', 'Admins'];
  static List<int> totalUsers = const [2000, 10, 5];
  static List<int> blockUsers = const [50, 2, 1];

  // table data
  // memebrs
  static List<Map<String, dynamic>> members = [
    {
      'id': '2021SE4',
      'name': 'Muhammad Salman',
      'username': 'salman112215',
      'mobile': '+92 0123456789',
      'email': 'salman.naeem.112215@gmail.com',
      'isBlocked': 0,
    },
    {
      'id': '2021SE24',
      'name': 'Muhammad Nouman',
      'username': 'nouman112215',
      'mobile': '+92 0123456789',
      'email': 'nouman.ahmed@gmail.com',
      'isBlocked': 1,
    },
    {
      'id': '2021SE56',
      'name': 'Muhammad Farjad',
      'username': 'farjad112215',
      'mobile': '+92 0123456789',
      'email': 'farjad.waseem@gmail.com',
      'isBlocked': 1,
    },
    {
      'id': '2022CS607',
      'name': 'Muhammad Hussnain',
      'username': 'husnain112215',
      'mobile': '+92 0123456789',
      'email': 'phsyco.coder@gmail.com',
      'isBlocked': 0,
    },
  ];

  // drivers
  static List<Map<String, dynamic>> drivers = [
    {
      'id': 'd001',
      'name': 'Salman Naeem',
      'username': 'dsalman112215',
      'password': 'dsalman',
      'mobile': '+92 0123456789',
      'email': 'salman.naeem.112215@gmail.com',
      'isBlocked': 0,
    },
    {
      'id': '2021SE24',
      'name': 'Muhammad Nouman',
      'username': 'dnouman112215',
      'password': 'dnouman',
      'mobile': '+92 0123456789',
      'email': 'nouman.ahmed@gmail.com',
      'isBlocked': 0,
    },
    {
      'id': '2021SE56',
      'name': 'Muhammad Farjad',
      'username': 'dfarjad112215',
      'password': 'dfarjad',
      'mobile': '+92 0123456789',
      'email': 'farjad.waseem@gmail.com',
      'isBlocked': 0,
    },
    {
      'id': '2022CS607',
      'name': 'Muhammad Hussnain',
      'username': 'dhusnain112215',
      'password': 'dpyscho',
      'mobile': '+92 0123456789',
      'email': 'phsyco.coder@gmail.com',
      'isBlocked': 1,
    },
  ];

  // drivers
  static List<Map<String, dynamic>> admin = [
    {
      'id': 'a001',
      'name': 'Muhammad Salman',
      'username': 'asalman112215',
      'mobile': '+92 0123456789',
      'email': 'salman.naeem.112215@gmail.com',
      'isBlocked': 1,
    },
    {
      'id': 'a002',
      'name': 'Muhammad Nouman',
      'username': 'anouman112215',
      'mobile': '+92 0123456789',
      'email': 'nouman.ahmed@gmail.com',
      'isBlocked': 0,
    },
    {
      'id': 'a003',
      'name': 'Muhammad Farjad',
      'username': 'afarjad112215',
      'mobile': '+92 0123456789',
      'email': 'farjad.waseem@gmail.com',
      'isBlocked': 0,
    },
    {
      'id': 'a004',
      'name': 'Muhammad Hussnain',
      'username': 'ahusnain112215',
      'mobile': '+92 0123456789',
      'email': 'phsyco.coder@gmail.com',
      'isBlocked': 0,
    },
  ];
}
