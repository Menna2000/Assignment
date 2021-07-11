bool passConfirmation(String password, String confirmPassword) {
  if (password != confirmPassword) {
    return false;
  }
  return true;
}

userMeals(List<Map<String, dynamic>> user, String name, String email,
    String pass, String confirmPass, String dates, String meals) {
  bool passConfirmed = passConfirmation(pass, confirmPass);

  if (passConfirmed == true) {
    Map<String, dynamic> newUser = {
      'name': name,
      'email': email,
      'password': pass,
      'passwordConfirm': confirmPass,
      'dates': dates,
      'meals': meals
    };
    user.add(newUser);
  }
}

void main() {
  List<Map<String, dynamic>> users = [
    {
      'name': 'Ahmed',
      'email': 'ahmed@gmail.com',
      'password': '123',
      'confirmPassword': '123',
      'dates': ['1/1/2021'],
      'meals': ['Noodles']
    },
    {
      'name': 'Mona',
      'email': 'mona@gmail.com',
      'password': '566',
      'confirmPassword': '566'
    }
  ];

  List<Map<String, Map<String, dynamic>>> calendar = [
    {
      '1/1/2021': {
        'meals type': ['breakfast', 'lunch', 'dinner', 'snacks'],
      },
    }
  ];

  List<Map<String, dynamic>> meals = [
    {
      'breakfast': ['Eggs', 'Cereal', 'salad'],
      'lunch': ['Chicken', 'Pasta', 'Potato'],
      'dinner': ['Noodles', 'Fries '],
      'snacks': ['chocolate', 'chips']
    }
  ];

  for (var i in users) {
    userMeals(users, i['name'], i['email'], i['password'], i['confirmPassword'],
        i['dates'], i['meals']);
  }
}
