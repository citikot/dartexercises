abstract class Hero {
  void say();
}

mixin Fly {
  void canFly(speed) {
    print('Я могу летать со скоростью $speed км/ч');
  }
}

mixin Jump {
  void canJump() {
    print('Я могу прыгать');
  }
}

class SuperMan extends Hero with Fly, Jump {
  var param;

  SuperMan(this.param);

  @override
  say() {
    canFly(param);
    canJump();
  }
}

void main() {
  SuperMan superMan = SuperMan(200);
  superMan.say();
}
