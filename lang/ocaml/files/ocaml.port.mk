# $OpenBSD: ocaml.port.mk,v 1.1 2002/11/13 21:42:15 naddy Exp $

# use PFRAG.native for extra files produced by the native code compiler

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "sparc"
MODOCAML_NATIVE=Yes
SED_PLIST+=	|sed -e '/^%%native%%$$/r${PKGDIR}/PFRAG.native' -e '//d'
.else
MODOCAML_NATIVE=No
RUN_DEPENDS+=	:ocaml-*:lang/ocaml
SED_PLIST+=	|sed -e '/^%%native%%$$/d'
.endif

BUILD_DEPENDS+=	:ocaml-*:lang/ocaml
