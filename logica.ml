open Printf;; 
open List;; 
(*como vamos pedir os 4 inteiros ao mesmo tempo temos que guardar no ficheiros em forma de lista *)
(*movimentos do cavalo em L*)
(*val nth:'a andarL -> int -> [(-2,-1);(-2,+1);(-1,-2);(-1,+2);(+1,-2);(+1,+2);(+2,-1);(+2,+1)]*)
let andarL.nth=[(-2,-1);(-2,+1);(-1,-2);(-1,+2);(+1,-2);(+1,+2);(+2,-1);(+2,+1)] ;; 
(*\ define as posições validas*)
let margenstab (a,b) = if ((a<0) && (a>n) && (b<0) && (b>n) && (n>50) && (n<0) ) then false else true ;; 
(*como este é lido do argv, é obtido como uma sting que depois
transformamos para inteiro*)

let n = int_of_string Sys.argv.(1);; 
let k = int_of_string Sys.argv.(2);; 
let a = int_of_string Sys.argv.(3);; 
let b = int_of_string Sys.argv.(4);;

let i= ref 0;;
let contar= ref 0;;

let rec caminhos (a,b,n,k)= 
        if k=O (* quando k=0 , nao faz caminhos*)
         then contar
        else 
            if (k=1) then
                for i=0 to 8 do
                    if margenstab (a+andarL.nth->i,b+andarL.nth->i)
                            then contar := contar + 1 
                done          
            else 
                for i=0 to 8 do
                    if margenstab (a+andarL.nth->i,b+andarL.nth->i)
                        then caminhos (a,b,n,k-1)
                    done

let () = printf "%d" contar;;
