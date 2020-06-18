open Printf
exception Entrada_invalida of string;;

let x = [| 2; 1; -1; -2; -2; -1; 1; 2 |]
let y = [|1; 2; 2; 1; -1; -2; -2; -1 |]

let n = read_int();;
if(n<0|| n>50) then raise (Entrada_invalida "N tem de ser um valor entre 0 e 50");;
let k = read_int();;
if(k<0|| k>8) then raise (Entrada_invalida "K tem de ser um valor entre 0 e 8");;
let a = read_int()
let b =read_int()

let c = ref 0




let rec recursiva (a:int) (b:int) (k:int)=
  if(k>0) then

  for i = 0 to 7 do

    if((a+x.(i)>=0&&a+x.(i)<n)&&(b+y.(i)>=0&&b+y.(i)<n)) then
    begin

    if(k==1) then c:=!c+1;


    recursiva (a+x.(i)) (b+y.(i)) (k-1)
    end

  done;;


recursiva a b k;;
print_int !c;
