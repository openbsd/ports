# $OpenBSD: ocaml.port.mk,v 1.2 2002/11/22 15:13:42 sturm Exp $

# use PFRAG.native for extra files produced by the native code compiler

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "sparc"
MODOCAML_NATIVE=Yes
SED_PLIST+=	|sed -e '/^%%native%%$$/r${PKGDIR}/PFRAG.native' -e '//d'
.else
MODOCAML_NATIVE=No
RUN_DEPENDS+=	::lang/ocaml
SED_PLIST+=	|sed -e '/^%%native%%$$/d'
.endif

BUILD_DEPENDS+=	::lang/ocaml
