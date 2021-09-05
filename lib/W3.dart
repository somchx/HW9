//Top level Functions คือไม่ต้องมี class ครอบ main
void main() {
//sayHello('som');
//sayHello('Flutter'); //ctrl+D = copy+paste
  sayHello('World', 'Android'); //parameter แบบ Positional ส่งตามลำดับที่ส่ง
//sayHello2('World',text2: 'Android');//แบบ Named parameter
//sayHello2('World');
//Hello.say(text: 'Flutter');
  var hello = Hello(
      text:
          'Flutter'); //==> build obj for instance method SAY instanciate มีหรือไม่มี new ก็ได้
  hello.say();
  print(hello.text);
  hello.text = 'Android';
  hello.say();
}

void sayHello(String text, String text2) {
  //print('Hello $text');
  //print('Hello ${text.toUpperCase()}');
  //print('Hello' +text);
  //print('Hello World');
  print('Hello ${text.toUpperCase()} ${text2.toLowerCase()}');
}

void sayHello2(String text, {String text2 = 'iOS'}) {
  //parameter แบบ Optional คือส่งหรือไม่ส่งก็ได้ รูปแบบ {type name ='default'}
  print(
      'Hello ${text.toUpperCase()} ${text2.toLowerCase()}'); // ถ้าไม่อยากให้เป็น null ต้องกำหนดค่า default ให้
  // หากไม่กำหนดค่า default ต้องใส่ String? text2
}

/*
Static method is static void say()
instance method
 */
class Hello {
  //String? _test;
  //static void say({String? text='World'}){ // เรียก method say bc ถูกสร้างไว้ใน class หรือ functions ก็ได้
  /*
  void say({String text='World'}) { //is instance method แลพต้องสร้าง obj ก่อน
    //หากเป็น _say หมายความเป็น private
    print('Hello $text');
    }
   */
  String text; // หากไม่ต้องการให้เปลี่ยนค่า text ใส่ final ไว้ข้างหน้า

  Hello({this.text = 'World'}); //or below
  /*
 Hello(String t){
    this.text =t;
  }
  */
  void say() {
    print('Hello ${this.text}');
  }
}
