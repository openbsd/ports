COMMENT =	   ML language with complete class-based objective system

# XXX Don't even think of updating ocaml alone.
# Do check that the ports that depend on it still work, or repair them.
VERSION=	4.14.2

# if the ocaml compiler gains support for BTI, as well as
# removing USE_NOBTCFI here (or changing to an arch-dependent
# USE_NOBTCFI-xxx), sync in ocaml.port.mk and bump REVISION
# for ports using MODULES=lang/ocaml
USE_NOBTCFI =	Yes

# It's possible to check PLISTs for non-native archs from a
# native arch. To do so on amd64, edit:
#
#      /usr/ports/infrastructure/mk/arch-defines.mk
#
# and remove "amd64" from OCAML_NATIVE_ARCHS. Then:
#
# $ make clean=all
# $ make package
#
# and check if packaging worked.

PKGNAME =	ocaml-${VERSION:C/\+//}

# OCaml has no binary compatibility between releases.
PKGSPEC =	ocaml-=${VERSION:C/\+//}

CATEGORIES=	lang
BASENAME =	${DISTNAME:R}
SITES=		https://caml.inria.fr/pub/distrib/${BASENAME}/
DOCFILES=	${BASENAME}-refman-html.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}
DISTNAME =	ocaml-${VERSION}

HOMEPAGE=	https://ocaml.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# QPL/LGPL
PERMIT_PACKAGE=	Yes

.include <bsd.port.arch.mk>

# XXX: cannot run autoconf due to use of gnu m4 feature
# that isn't in base m4
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV+=		CFLAGS="${CFLAGS}" \
			CPPFLAGS="${CFLAGS} ${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"
.if ${PROPERTIES:Mclang}
CONFIGURE_ENV+=		OBJDUMP=/usr/bin/llvm-objdump
.endif
CONFIGURE_ARGS +=	--disable-force-safe-string \
			--enable-ocamltest

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

.if ${MACHINE_ARCH} == "i386"
# configure: error: fma does not work, enable emulation with --enable-imprecise-c99-float-ops
CONFIGURE_ARGS +=	--enable-imprecise-c99-float-ops
.endif

USE_GMAKE=	Yes

WANTLIB =		c m pthread

.if ${PROPERTIES:Mocaml_native}
ALL_TARGET=	world.opt
PKG_ARGS +=	-Dnative=1

.if ${PROPERTIES:Mocaml_native_dynlink}
PKG_ARGS +=	-Ddynlink=1
.else
PKG_ARGS +=	-Ddynlink=0
.endif

.else
ALL_TARGET=	world
PKG_ARGS +=	-Dnative=0
NO_TEST   =	yes
.endif

TEST_TARGET =	tests

DPB_PROPERTIES +=	parallel

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml/html/libref
	@${INSTALL_DATA} ${WRKDIR}/htmlman/*.{html,gif,css} \
		${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/libref/* \
		${PREFIX}/share/doc/ocaml/html/libref
	@${INSTALL_DATA} \
		${WRKSRC}/{LICENSE,Changes} \
		${PREFIX}/share/doc/ocaml

# One test in the suite (testsocket.ml) requires an active
# connection to internet
TEST_IS_INTERACTIVE =		Yes


.include <bsd.port.mk>
