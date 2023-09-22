with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
  subtype Speed is Integer range 0 .. 1000;
  subtype Time is Integer range 0 .. 100;
  S : Speed;
  T : Time;
  D : constant Integer := 285;
begin
  Put ("Введите скорость в км/ч: ");
  Get (S);
  Put ("Введите время в часах: ");
  Get (T);
  Put ("Проехав заданное время с заданной скоростью вы остановитесь на ");
  Put (S * T rem D, 3);
  Put (" километре");
  New_Line;
end Main;
