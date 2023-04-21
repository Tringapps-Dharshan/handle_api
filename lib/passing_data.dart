class PassingData {
  Address address;
  Company company;
  final int id;
  final String name;
  final String username;
  final String email;

  final String phone;
  final String website;

  PassingData(this.id, this.name, this.username, this.email, this.phone,
      this.website, this.address, this.company);
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  Address(this.street, this.suite, this.city, this.zipcode);
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company(this.name, this.catchPhrase, this.bs);
}
