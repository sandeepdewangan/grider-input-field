class ValidationMixin{
  String validateEmail(String value){
    if(!value.contains('@')){
      return 'Please enter correct email id';
    }
    return null;
  }

  String validatePassword(String value){
    if(value.length < 4){
      return 'Please enter password more than 4 characters';
    }
    return null;
  }
}