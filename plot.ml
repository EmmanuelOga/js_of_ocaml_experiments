(* simple plotting on the console of a math function. *)

let plot func fromX toX interval =
  let print_coord x =
    for u = 1 to int_of_float(x) do print_char ' '; done;
    print_char '*';
    print_newline (); in
  let rec ploti current =
    if current <= toX then begin
      print_coord (func current);
      ploti (current +. interval);
    end in
  ploti fromX;;

let pi = 4.0 *. atan 1.0;;

plot (fun x -> 60.0 *. sin x) 0. pi (pi /. 20.);;
