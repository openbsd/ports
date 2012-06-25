# $OpenBSD: ocaml.port.mk,v 1.17 2012/06/25 11:43:35 espie Exp $

# regular file usage for bytecode:
# PLIST               -- bytecode base files
# PFRAG.foo           -- bytecode files for FLAVOR == foo
# PFRAG.no-foo        -- bytecode files for FLAVOR != foo
# extended file usage for nativecode:
# PFRAG.native        -- nativecode base files
# PFRAG.foo-native    -- nativecode files for FLAVOR == foo
# PFRAG.no-foo-native -- nativecode files for FLAVOR != foo

OCAML_VERSION=3.12.1

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "amd64" || \
	${MACHINE_ARCH} == "powerpc"
MODOCAML_NATIVE=Yes

# include nativecode base files
PKG_ARGS+=-Dnative=1

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
MODOCAML_NATDYNLINK=Yes

# include native dynlink base files
PKG_ARGS+=-Ddynlink=1

.else

MODOCAML_NATDYNLINK=No

# remove native dynlink base file entry from PLIST
PKG_ARGS+=-Ddynlink=0
.endif

.else

MODOCAML_NATIVE=No
RUN_DEPENDS+=	lang/ocaml=${OCAML_VERSION}

# remove native base file entry from PLIST
PKG_ARGS+=-Dnative=0
.endif

BUILD_DEPENDS+=	lang/ocaml=${OCAML_VERSION}
MAKE_ENV+= OCAMLFIND_DESTDIR=${DESTDIR}${TRUEPREFIX}/lib/ocaml/site-lib

