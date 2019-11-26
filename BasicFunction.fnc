create or replace function Even(Value in integer) return boolean is
  Result boolean;
begin
  Result := (Value mod 2 = 0);
  return(Result);
end Even;
/
create or replace function Odd(Value in integer) return boolean is
  Result boolean;
begin
  Result := not Even(Value);
  return (Result);
end Odd;
/
/
