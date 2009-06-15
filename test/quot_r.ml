<:expr< $e1$ . $e2$ >>;
<:expr< $anti:e$ >>;
<:expr< $e1$ $e2$ >>;
<:expr< $e1$ .( $e2$ ) >>;
<:expr< [| $list:le$ |] >>;
<:expr< [| $_list:le$ |] >>;
<:expr< assert $e$ >>;
<:expr< $e1$ := $e2$ >>;
<:expr< $e$ .{ $list:le$ } >>;
<:expr< $e$ .{ $_list:le$ } >>;
<:expr< $chr:s$ >>;
<:expr< $_chr:s$ >>;
<:expr< ($e$ : $t1$ :> $t2$) >>;
<:expr< ($e$ :> $t2$) >>;
<:expr< $flo:s$ >>;
<:expr< $_flo:s$ >>;
<:expr< for $lid:s$ = $e1$ $to:b$ $e2$ do { $list:le$ } >>;
<:expr< for $_lid:s$ = $e1$ $_to:b$ $e2$ do { $_list:le$ } >>;
<:expr< fun [ $list:lpwe$ ] >>;
<:expr< fun [ $_list:lpwe$ ] >>;
<:expr< if $e1$ then $e2$ else $e3$ >>;
<:expr< $int:s$ >>;
<:expr< $_int:s$ >>;
<:expr< $int32:s$ >>;
<:expr< $_int32:s$ >>;
<:expr< $int64:s$ >>;
<:expr< $_int64:s$ >>;
<:expr< $nativeint:s$ >>;
<:expr< $_nativeint:s$ >>;
<:expr< ~$s$ >>;
<:expr< ~$_:s$ >>;
<:expr< ~$s$: $e$ >>;
<:expr< ~$_:s$: $e$ >>;
<:expr< lazy $e$ >>;
<:expr< let $flag:b$ $list:lpe$ in $e$ >>;
<:expr< let $_flag:b$ $_list:lpe$ in $e$ >>;
<:expr< $lid:s$ >>;
<:expr< $_lid:s$ >>;
<:expr< let module $uid:s$ = $me$ in $e$ >>;
<:expr< let module $_uid:s$ = $me$ in $e$ >>;
<:expr< match $e$ with [ $list:lpwe$ ] >>;
<:expr< match $e$ with [ $_list:lpwe$ ] >>;
<:expr< new $list:ls$ >>;
<:expr< new $_list:ls$ >>;
<:expr< object $opt:op$ $list:lcstri$ end >>;
<:expr< object $_opt:op$ $_list:lcstri$ end >>;
<:expr< ?$s$ >>;
<:expr< ?$_:s$ >>;
<:expr< ?$s$: $e$ >>;
<:expr< ?$_:s$: $e$ >>;
<:expr< {< $list:lse$ >} >>;
<:expr< {< $_list:lse$ >} >>;
<:expr< { $list:lpe$ } >>;
<:expr< { $_list:lpe$ } >>;
<:expr< { ($e$) with $list:lpe$ } >>;
<:expr< { ($e$) with $_list:lpe$ } >>;
<:expr< do { $list:le$ } >>;
<:expr< do { $_list:le$ } >>;
<:expr< $e$ # $lid:s$ >>;
<:expr< $e$ # $_lid:s$ >>;
<:expr< $e1$ .[ $e2$ ] >>;
<:expr< $str:s$ >>;
<:expr< $_str:s$ >>;
<:expr< try $e$ with [ $list:lpwe$ ] >>;
<:expr< try $e$ with [ $_list:lpwe$ ] >>;
<:expr< ($list:le$) >>;
<:expr< ($_list:le$) >>;
<:expr< ($e$ : $t$) >>;
<:expr< $uid:s$ >>;
<:expr< $_uid:s$ >>;
<:expr< `$s$ >>;
<:expr< `$_:s$ >>;
<:expr< while $e$ do { $list:le$ } >>;
<:expr< while $e$ do { $_list:le$ } >>;
<:patt< $p1$ . $p2$ >>;
<:patt< ($p1$ as $p2$) >>;
<:patt< $anti:p$ >>;
<:patt< _ >>;
<:patt< $p1$ $p2$ >>;
<:patt< [| $list:lp$ |] >>;
<:patt< [| $_list:lp$ |] >>;
<:patt< $chr:s$ >>;
<:patt< $_chr:s$ >>;
<:patt< $int:s$ >>;
<:patt< $_int:s$ >>;
<:patt< $int32:s$ >>;
<:patt< $_int32:s$ >>;
<:patt< $int64:s$ >>;
<:patt< $_int64:s$ >>;
<:patt< $nativeint:s$ >>;
<:patt< $_nativeint:s$ >>;
<:patt< $flo:s$ >>;
<:patt< $_flo:s$ >>;
<:patt< ~$s$ >>;
<:patt< ~$_:s$ >>;
<:patt< ~$s$: $p$ >>;
<:patt< ~$_:s$: $p$ >>;
<:patt< $lid:s$ >>;
<:patt< $_lid:s$ >>;
<:patt< ?$s$ >>;
<:patt< ?$_:s$ >>;
<:patt< ?$s$: ($p$) >>;
<:patt< ?$_:s$: ($p$) >>;
<:patt< ?$s$: ($p$ = $e$) >>;
<:patt< ?$_:s$: ($p$ = $e$) >>;
<:patt< $p1$ | $p2$ >>;
<:patt< $p1$ .. $p2$ >>;
<:patt< { $list:lpp$ } >>;
<:patt< { $_list:lpp$ } >>;
<:patt< $str:s$ >>;
<:patt< $_str:s$ >>;
<:patt< ($list:lp$) >>;
<:patt< ($_list:lp$) >>;
<:patt< ($p$ : $t$) >>;
<:patt< # $list:ls$ >>;
<:patt< # $_list:ls$ >>;
<:patt< $uid:s$ >>;
<:patt< $_uid:s$ >>;
<:patt< ` $s$ >>;
<:patt< ` $_:s$ >>;
<:ctyp< $t1$ . $t2$ >>;
<:ctyp< $t1$ as $t2$ >>;
<:ctyp< _ >>;
<:ctyp< $t1$ $t2$ >>;
<:ctyp< $t1$ -> $t2$ >>;
<:ctyp< # $list:ls$ >>;
<:ctyp< # $_list:ls$ >>;
<:ctyp< ~$s$: $t$ >>;
<:ctyp< ~$_:s$: $t$ >>;
<:ctyp< $lid:s$ >>;
<:ctyp< $_lid:s$ >>;
<:ctyp< $t1$ == $t2$ >>;
<:ctyp< < $list:lst$ > >>;
<:ctyp< < $_list:lst$ > >>;
<:ctyp< < $list:lst$ .. > >>;
<:ctyp< < $_list:lst$ .. > >>;
<:ctyp< < $list:lst$ $flag:b$ > >>;
<:ctyp< < $_list:lst$ $_flag:b$ > >>;
<:ctyp< ?$s$: $t$ >>;
<:ctyp< ?$_:s$: $t$ >>;
<:ctyp< ! $list:ls$ . $t$ >>;
<:ctyp< ! $_list:ls$ . $t$ >>;
<:ctyp< ' $s$ >>;
<:ctyp< ' $_:s$ >>;
<:ctyp< { $list:llsbt$ } >>;
<:ctyp< { $_list:llsbt$ } >>;
<:ctyp< [ $list:llslt$ ] >>;
<:ctyp< [ $_list:llslt$ ] >>;
<:ctyp< ( $list:lt$ ) >>;
<:ctyp< ( $_list:lt$ ) >>;
<:ctyp< $uid:s$ >>;
<:ctyp< $_uid:s$ >>;
<:ctyp< [ = $list:lpv$ ] >>;
<:ctyp< [ = $_list:lpv$ ] >>;
<:ctyp< [ > $list:lpv$ ] >>;
<:ctyp< [ > $_list:lpv$ ] >>;
<:ctyp< [ < $list:lpv$ ] >>;
<:ctyp< [ < $_list:lpv$ ] >>;
<:ctyp< [ < $list:lpv$ > $list:ls$ ] >>;
<:ctyp< [ < $_list:lpv$ > $_list:ls$ ] >>;
<:str_item< class $list:lcd$ >>;
<:str_item< class $_list:lcd$ >>;
<:str_item< class type $list:lctd$ >>;
<:str_item< class type $_list:lctd$ >>;
<:str_item< declare $list:lstri$ end >>;
<:str_item< declare $_list:lstri$ end >>;
<:str_item< # $s$ >>;
(*
<:str_item< # $_:s$ >>;
<:str_item< # $s$ $e$ >>;
<:str_item< # $_:s$ $e$ >>;
<:str_item< # $s$ $opt:oe$ >>;
<:str_item< # $_:s$ $_opt:oe$ >>;
<:str_item< exception $s$ of $list:lt$ >>;
<:str_item< exception $_:s$ of $_list:lt$ >>;
<:str_item< exception $s$ of $list:lt$ = $list:ls$ >>;
<:str_item< exception $_:s$ of $_list:lt$ = $_list:ls$ >>;
<:str_item< $exp:e$ >>;
<:str_item< external $s$ : $t$ = $list:ls$ >>;
<:str_item< external $_:s$ : $t$ = $_list:ls$ >>;
<:str_item< include $me$ >>;
<:str_item< module $flag:b$ $list:lsme$ >>;
<:str_item< module $_flag:b$ $_list:lsme$ >>;
<:str_item< module type $s$ = $mt$ >>;
<:str_item< module type $_:s$ = $mt$ >>;
<:str_item< open $list:ls$ >>;
<:str_item< open $_list:ls$ >>;
<:str_item< type $list:ltd$ >>;
<:str_item< type $_list:ltd$ >>;
<:str_item< value $flag:b$ $list:lpe$ >>;
<:str_item< value $_flag:b$ $_list:lpe$ >>;
*)
