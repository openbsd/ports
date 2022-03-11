(*
 * Copyright (c) 2005 Anil Madhavapeddy <anil@recoil.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 * $Id: randomvars.ml,v 1.3 2022/03/11 18:49:49 naddy Exp $
 *)

(* introduce log messages to trace kernel messages *)

open Pretty
open Cil
module E = Errormsg

class randomVarsVisitor f = object
  inherit nopCilVisitor

  method vfunc fundec =
    (* make list of local variables which we will erase as
     * they are initialized *)
    let locals = ref fundec.slocals in
    let stmts = List.fold_left (fun a v -> match v.vtype with
      |TInt (ik,_) ->
        let ie = kinteger64 ik (Int64.max_int) in
        mkStmt (Instr[Set(var v,ie,!currentLoc)]) :: a
      |TArray (ty,exp,_) ->
        let expify fundec = Lval(Var(fundec.svar), NoOffset) in
        let m = expify (emptyFunction "memset") in
        let addr = mkAddrOrStartOf (Var v, NoOffset) in
        let i = kinteger64 IUInt (Int64.max_int) in
        begin match exp with
        |Some sz ->
          let size = BinOp(Mult,(sizeOf ty),sz,(TInt(IUInt,[]))) in
          mkStmt (Instr[Call(None,m,[addr;i;size],locUnknown)]) :: a
        |None -> a 
        end
      |_ -> a
    ) [] fundec.slocals in
    fundec.sbody.bstmts <- stmts @ fundec.sbody.bstmts;
    ChangeTo(fundec)

end

let randomvars f =
    visitCilFileSameGlobals (new randomVarsVisitor f) f

let feature : featureDescr = 
  { fd_name = "randomvars";
    fd_enabled = ref false;
    fd_description = "randomize values of uninitialized local variables";
    fd_extraopt = [];
    fd_doit = (function (f: file) -> randomvars f);
    fd_post_check = true;
  } 
