# $OpenBSD: Makefile,v 1.65 2014/09/02 09:24:44 chrisz Exp $

NOT_FOR_ARCHS=	hppa

MULTI_PACKAGES = -graphics -main

COMMENT-main =	   ML language with complete class-based objective system
COMMENT-graphics = OCaml Graphics library providing basic drawing primitives

# XXX Don't even think of updating ocaml alone.
# Do check that the ports that depend on it still work, or repair them. 
# Don't forget to bump version in ocaml.port.mk, too!
VERSION=4.02.0

PKGNAME-main =		ocaml-${VERSION}
PKGNAME-graphics =	ocaml-graphics-${VERSION}

# OCaml has no binary compatibility between releases.
PKGSPEC-main =	ocaml-=${VERSION}

CATEGORIES=	lang
# Remove last version component ocaml-X.XX.X -> ocaml-X.XX
BASENAME =	${DISTNAME:C/\.[^.]*$//}
MASTER_SITES=	http://caml.inria.fr/pub/distrib/${BASENAME}/
DOCFILES=	${BASENAME}-refman-html.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}
DISTNAME =	ocaml-${VERSION}

HOMEPAGE=	http://www.ocaml.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# QPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	simple dest
CONFIGURE_ARGS+=-prefix ${PREFIX} 
CONFIGURE_ARGS+=-cc '${CC} ${CFLAGS}'
CONFIGURE_ARGS+=-x11include ${X11BASE}/include -x11lib ${X11BASE}/lib
CONFIGURE_ENV+=OPENBSD_LOCALBASE="${LOCALBASE}"

USE_GMAKE=	Yes

BUILD_DEPENDS +=	devel/gdb
RUN_DEPENDS-graphics +=	lang/ocaml
WANTLIB-main =		c curses iberty m pthread z
WANTLIB-graphics =	X11

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mocaml_native}
ALL_TARGET=	world bootstrap opt opt.opt
PKG_ARGS +=	-Dnative=1
TEST_DEPENDS +=	${BUILD_PKGPATH}

.if ${PROPERTIES:Mocaml_native_dynlink}
PKG_ARGS +=	-Ddynlink=1
.else
PKG_ARGS +=	-Ddynlink=0
.endif

.else
ALL_TARGET=	world bootstrap
PKG_ARGS +=	-Dnative=0
NO_TEST   =	yes
.endif


post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml/html/libref
	@${INSTALL_DATA} ${WRKDIR}/htmlman/*.{html,gif} \
		${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/libref/* \
		${PREFIX}/share/doc/ocaml/html/libref
	@${INSTALL_DATA} \
		${WRKSRC}/{LICENSE,Changes} \
		${PREFIX}/share/doc/ocaml

# PFRAG.native was generated from PLIST with:
# egrep '(ocamlopt|\.cmx|\.cmxa|\.cmxs|\.opt|opt\.1|opt.cmi|\.native|\.o)$'

# XXX one test in the suite (testsocket.ml) requires an active
# connection to internet
do-test:
	@cd ${WRKSRC}/testsuite && ulimit -Sn 256 && ${MAKE_PROGRAM} all

.include <bsd.port.mk>
