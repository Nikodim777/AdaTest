with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
  subtype Speed is Integer range 0 .. 1000;
  subtype Time is Integer range 0 .. 100;
  The_Speed : Speed;
  The_Time : Time;
  Distance : constant Integer := 285;
  Result : Integer := 0;
begin
  Put ("Введите скорость в км/ч: ");
  Get (The_Speed);
  Put ("Введите время в часах: ");
  Get (The_Time);

  Put ("Проехав заданное время с " &
         "заданной скоростью вы окажитесь: ");
  Result := The_Speed * The_Time rem Distance;

  if Result >= 0 and then Result < 100 then
    Put ("В начале круга");
  elsif Result < 200 then
      Put ("В середине круга");
  else
      Put ("В конце круга");
  end if;

  New_Line;
end Main;
