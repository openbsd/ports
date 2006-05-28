(* $OpenBSD: nullint.ml,v 1.2 2006/05/28 15:44:14 avsm Exp $ *)
(* check for NULL/int comparisons - it does false positive at the moment *)

open Pretty
open Cil
module E = Errormsg

let checkNullInt exp other =
   let ty = (typeOf exp) in
   if isZero exp && longType = ty then
     match other with
      | CastE (TInt(longType, _), _) ->
        ignore (E.log "%t: Should not compare %a with NULL\n"
                d_thisloc d_exp other)
      | _ -> ignore ()

class grepNullInt = object
  inherit nopCilVisitor

  method vexpr (i: exp) : exp visitAction = 
    match i with 
      | BinOp(Gt, le, re, _)
      | BinOp(Lt, le, re, _)
      | BinOp(Le, le, re, _)
      | BinOp(Ge, le, re, _)
      | BinOp(Eq, le, re, _) ->
          checkNullInt le re;
          checkNullInt re le;
          SkipChildren
      | _ -> SkipChildren
end

let feature : featureDescr = 
  { fd_name = "nullint";
    fd_enabled = ref false;
    fd_description = "check for NULL and int comparisons";
    fd_extraopt = [];
    fd_doit = 
    (function (f: file) -> 
      let lwVisitor = new grepNullInt in
      visitCilFileSameGlobals lwVisitor f);
    fd_post_check = true;
  } 
