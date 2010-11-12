(* camlp5r pa_macro.cmo *)
(* This file has been generated by program: do not edit! *)
(* Copyright (c) INRIA 2007-2010 *)

open Parsetree;;
open Longident;;
open Asttypes;;

type ('a, 'b) choice =
    Left of 'a
  | Right of 'b
;;

let sys_ocaml_version = "3.01";;

let ocaml_location (fname, lnum, bolp, bp, ep) =
  {Location.loc_start = bp; Location.loc_end = ep;
   Location.loc_ghost = bp = 0 && ep = 0}
;;

let ocaml_type_declaration params cl tk pf tm loc variance =
  Some
    {ptype_params = params; ptype_cstrs = cl; ptype_kind = tk;
     ptype_manifest = tm; ptype_loc = loc; ptype_variance = variance}
;;

let ocaml_class_type = Some (fun d loc -> {pcty_desc = d; pcty_loc = loc});;

let ocaml_class_expr = Some (fun d loc -> {pcl_desc = d; pcl_loc = loc});;

let ocaml_pmty_typeof = None;;

let ocaml_ptype_abstract = Ptype_abstract;;

let ocaml_ptype_record ltl priv =
  let ltl = List.map (fun (n, m, t, _) -> n, m, t) ltl in Ptype_record ltl
;;

let ocaml_ptype_variant ctl priv =
  let ctl = List.map (fun (c, tl, _) -> c, tl) ctl in Ptype_variant ctl
;;

let ocaml_ptyp_arrow lab t1 t2 = Ptyp_arrow (lab, t1, t2);;

let ocaml_ptyp_class li tl ll = Ptyp_class (li, tl, ll);;

let ocaml_ptyp_package = None;;

let ocaml_ptyp_poly = None;;

let ocaml_ptyp_variant catl clos sl_opt =
  try
    let catl =
      List.map
        (function
           Left (c, a, tl) -> c, a, tl
         | Right t -> raise Exit)
        catl
    in
    let sl =
      match sl_opt with
        Some sl -> sl
      | None -> []
    in
    Some (Ptyp_variant (catl, clos, sl))
  with Exit -> None
;;

let ocaml_const_int32 = None;;

let ocaml_const_int64 = None;;

let ocaml_const_nativeint = None;;

let ocaml_pexp_apply f lel = Pexp_apply (f, lel);;

let ocaml_pexp_assertfalse fname loc = Pexp_assertfalse;;

let ocaml_pexp_assert fname loc e = Pexp_assert e;;

let ocaml_pexp_function lab eo pel = Pexp_function (lab, eo, pel);;

let ocaml_pexp_lazy = None;;

let ocaml_pexp_letmodule = Some (fun i me e -> Pexp_letmodule (i, me, e));;

let ocaml_pexp_newtype = None;;

let ocaml_pexp_object = None;;

let ocaml_pexp_open = None;;

let ocaml_pexp_pack = None;;

let ocaml_pexp_poly = None;;

let ocaml_pexp_record lel eo = Pexp_record (lel, eo);;

let ocaml_pexp_variant =
  let pexp_variant_pat =
    function
      Pexp_variant (lab, eo) -> Some (lab, eo)
    | _ -> None
  in
  let pexp_variant (lab, eo) = Pexp_variant (lab, eo) in
  Some (pexp_variant_pat, pexp_variant)
;;

let ocaml_ppat_array = Some (fun pl -> Ppat_array pl);;

let ocaml_ppat_construct li po chk_arity =
  Ppat_construct (li, po, chk_arity)
;;

let ocaml_ppat_construct_args =
  function
    Ppat_construct (li, po, chk_arity) -> Some (li, po, chk_arity)
  | _ -> None
;;

let ocaml_ppat_lazy = None;;

let ocaml_ppat_record lpl = Ppat_record lpl;;

let ocaml_ppat_type = Some (fun sl -> Ppat_type sl);;

let ocaml_ppat_unpack = None;;

let ocaml_ppat_variant =
  let ppat_variant_pat =
    function
      Ppat_variant (lab, po) -> Some (lab, po)
    | _ -> None
  in
  let ppat_variant (lab, po) = Ppat_variant (lab, po) in
  Some (ppat_variant_pat, ppat_variant)
;;

let ocaml_psig_class_type = Some (fun ctl -> Psig_class_type ctl);;

let ocaml_psig_recmodule = None;;

let ocaml_pstr_class_type = Some (fun ctl -> Pstr_class_type ctl);;

let ocaml_pstr_exn_rebind = Some (fun s sl -> Pstr_exn_rebind (s, sl));;

let ocaml_pstr_include = Some (fun me -> Pstr_include me);;

let ocaml_pstr_recmodule = None;;

let ocaml_class_infos =
  Some
    (fun virt params name expr loc variance ->
       {pci_virt = virt; pci_params = params; pci_name = name;
        pci_expr = expr; pci_loc = loc; pci_variance = variance})
;;

let ocaml_pmod_unpack = None;;

let ocaml_pcf_cstr = Some (fun (t1, t2, loc) -> Pcf_cstr (t1, t2, loc));;

let ocaml_pcf_inher ce pb = Pcf_inher (ce, pb);;

let ocaml_pcf_init = Some (fun e -> Pcf_init e);;

let ocaml_pcf_meth (s, pf, ovf, e, loc) =
  let pf = if pf then Private else Public in Pcf_meth (s, pf, e, loc)
;;

let ocaml_pcf_val (s, mf, ovf, e, loc) =
  let mf = if mf then Mutable else Immutable in Pcf_val (s, mf, e, loc)
;;

let ocaml_pcf_valvirt = None;;

let ocaml_pcl_apply = Some (fun ce lel -> Pcl_apply (ce, lel));;

let ocaml_pcl_constr = Some (fun li ctl -> Pcl_constr (li, ctl));;

let ocaml_pcl_constraint = Some (fun ce ct -> Pcl_constraint (ce, ct));;

let ocaml_pcl_fun = Some (fun lab ceo p ce -> Pcl_fun (lab, ceo, p, ce));;

let ocaml_pcl_let = Some (fun rf pel ce -> Pcl_let (rf, pel, ce));;

let ocaml_pcl_structure = Some (fun cs -> Pcl_structure cs);;

let ocaml_pctf_cstr = Some (fun (t1, t2, loc) -> Pctf_cstr (t1, t2, loc));;

let ocaml_pctf_val (s, mf, t, loc) = Pctf_val (s, mf, Some t, loc);;

let ocaml_pcty_constr = Some (fun li ltl -> Pcty_constr (li, ltl));;

let ocaml_pcty_fun = Some (fun lab t ct -> Pcty_fun (lab, t, ct));;

let ocaml_pcty_signature = Some (fun (t, cil) -> Pcty_signature (t, cil));;

let ocaml_pdir_bool = Some (fun b -> Pdir_bool b);;

let ocaml_pwith_modsubst = None;;

let ocaml_pwith_typesubst = None;;

let module_prefix_can_be_in_first_record_label_only = false;;

let split_or_patterns_with_bindings = true;;

let has_records_with_with = true;;

let arg_rest =
  function
    Arg.Rest r -> Some r
  | _ -> None
;;

let arg_set_string _ = None;;

let arg_set_int _ = None;;

let arg_set_float _ = None;;

let arg_symbol _ = None;;

let arg_tuple _ = None;;

let arg_bool _ = None;;

let char_escaped =
  function
    '\r' -> "\\r"
  | c -> Char.escaped c
;;

let hashtbl_mem = Hashtbl.mem;;

let list_rev_append = List.rev_append;;

let list_rev_map = List.rev_map;;

let list_sort = List.sort;;

let pervasives_set_binary_mode_out = Pervasives.set_binary_mode_out;;

let scan_format fmt i kont =
  match fmt.[i+1] with
    'c' -> Obj.magic (fun (c : char) -> kont (String.make 1 c) (i + 2))
  | 'd' -> Obj.magic (fun (d : int) -> kont (string_of_int d) (i + 2))
  | 's' -> Obj.magic (fun (s : string) -> kont s (i + 2))
  | c ->
      failwith (Printf.sprintf "Pretty.sprintf \"%s\" '%%%c' not impl" fmt c)
;;
let printf_ksprintf kont fmt =
  let fmt : string = Obj.magic fmt in
  let len = String.length fmt in
  let rec doprn rev_sl i =
    if i >= len then
      let s = String.concat "" (List.rev rev_sl) in Obj.magic (kont s)
    else
      match fmt.[i] with
        '%' -> scan_format fmt i (fun s -> doprn (s :: rev_sl))
      | c -> doprn (String.make 1 c :: rev_sl) (i + 1)
  in
  doprn [] 0
;;

let string_contains = String.contains;;
