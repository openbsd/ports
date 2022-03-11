(*
 * Copyright (c) 2004 Anil Madhavapeddy <anil@recoil.org>
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
 * $Id: kerneltrace.ml,v 1.3 2022/03/11 18:49:49 naddy Exp $
 *)

(* introduce log messages to trace kernel messages *)

open Pretty
open Cil
module E = Errormsg

let traceRegexp = ref None
let traceLogLevel = ref 0

class callTraceVisitor f outp = object
  inherit nopCilVisitor

  method vfunc fundec =
    let funname = fundec.svar.vname in
    match !traceRegexp with
    |None -> SkipChildren
    |Some reg ->
    if Str.string_match (Str.regexp reg) funname 0 then begin
      let args = List.fold_left (fun a b ->
        match b.vtype with
        |TInt (kind, _) ->
          let fmt = match kind with
          |IChar |ISChar |IUChar -> "%c"
          |IInt |IShort |IUShort -> "%d"
          |IUInt -> "%u" |ILong -> "%ld"
          |ILongLong -> "%lld" |IULong -> "%llu"
          |IULongLong -> "%llu" in
          (Printf.sprintf "%s=%s" b.vname fmt, b) :: a
        |_ -> a
      ) [] fundec.sformals in
      let args = List.rev args in
      let level = integer (!traceLogLevel) in (* LOG_DEBUG *)
      let formargs = String.concat " " (List.map (fun (a,_) -> a) args) in
      let form = mkString (Printf.sprintf "%s: %s\n" funname formargs) in
      let sargs = List.map (fun (_,b) -> Lval(var b)) args in
      let funvar = level :: form :: sargs in
      let st = mkStmt (Instr[Call(None,outp,funvar,locUnknown)]) in
      fundec.sbody.bstmts <- st :: fundec.sbody.bstmts;
      ChangeTo(fundec)
    end else
      DoChildren

end

let calltrace f =
    let expify fundec = Lval(Var(fundec.svar), NoOffset) in
    let outp = expify (emptyFunction "log") in
    visitCilFileSameGlobals (new callTraceVisitor f outp) f

let feature : featureDescr = 
  { fd_name = "kerneltrace";
    fd_enabled = ref false;
    fd_description = "add log messages to kernel function calls";
    fd_extraopt = [
      ("--trace-regexp", Arg.String (fun x -> traceRegexp := Some x),
        "<str> regexp for which functions to insert logging calls");
      ("--trace-level", Arg.Int (fun x -> traceLogLevel := x),
        "<int> log level to use for trace messages");
    ];
    fd_doit = (function (f: file) -> calltrace f);
    fd_post_check = true;
  } 
