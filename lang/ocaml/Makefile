# $OpenBSD: Makefile,v 1.64 2014/08/21 20:54:04 chrisz Exp $

NOT_FOR_ARCHS=	hppa

MULTI_PACKAGES = -camlp4 -graphics -labltk -main

COMMENT-main =	   ML language with complete class-based objective system
COMMENT-graphics = OCaml Graphics library providing basic drawing primitives
COMMENT-camlp4 =   OCaml Preprocessor and Pretty-Printer
COMMENT-labltk =   OCaml TK bindings

# XXX Don't even think of updating ocaml alone.
# Do check that the ports that depend on it still work, or repair them. 
# Don't forget to bump version in ocaml.port.mk, too!
VERSION=4.01.0
REVISION = 0

PKGNAME-main =		ocaml-${VERSION}
PKGNAME-graphics =	ocaml-graphics-${VERSION}
PKGNAME-camlp4 =	ocaml-camlp4-${VERSION}
PKGNAME-labltk =	ocaml-labltk-${VERSION}

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

MODULES+= lang/tcl x11/tk

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=-tkdefs '-I${MODTCL_INCDIR} -I${MODTK_INCDIR}'
CONFIGURE_ARGS+=-tklibs -L${LOCALBASE}/lib
CONFIGURE_ARGS+=-prefix ${PREFIX} 
CONFIGURE_ARGS+=-cc '${CC} ${CFLAGS}'
CONFIGURE_ARGS+=-x11include ${X11BASE}/include -x11lib ${X11BASE}/lib
CONFIGURE_ENV+=OPENBSD_LOCALBASE="${LOCALBASE}"

# ocaml's configure script is too smart for its own good
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

USE_GMAKE=	Yes

BUILD_DEPENDS +=	${MODTK_BUILD_DEPENDS} \
			devel/gdb
RUN_DEPENDS-camlp4 +=	lang/ocaml
RUN_DEPENDS-graphics +=	lang/ocaml
RUN_DEPENDS-labltk +=	lang/ocaml ${MODTK_RUN_DEPENDS}
LIB_DEPENDS-labltk +=	${MODTK_LIB_DEPENDS}
WANTLIB-main =		c curses m pthread
WANTLIB-camlp4 =	c m
WANTLIB-graphics =	X11
WANTLIB-labltk =	X11 ${MODTK_WANTLIB}

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mocaml_native}
ALL_TARGET=	world bootstrap opt opt.opt
PKG_ARGS +=	-Dnative=1
.if ${PROPERTIES:Mocaml_native_dynlink}
PKG_ARGS +=	-Ddynlink=1
.else
PKG_ARGS +=	-Ddynlink=0
.endif
.else
ALL_TARGET=	world bootstrap
PKG_ARGS +=	-Dnative=0
.endif

# XXX regress tests only work on archs with native-code compiler
TEST_DEPENDS+=	${BUILD_PKGPATH}

post-extract:
	@cp ${WRKSRC}/asmrun/power-elf.S ${WRKSRC}/asmrun/power-bsd.S

post-install:
.if ${PROPERTIES:Mocaml_native}
	@ln -sf ${LOCALBASE}/bin/ocamlbuild.native ${PREFIX}/bin/ocamlbuild
.else
	@ln -sf ${LOCALBASE}/bin/ocamlbuild.byte ${PREFIX}/bin/ocamlbuild
.endif
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml/html/libref
	@${INSTALL_DATA} ${WRKDIR}/htmlman/*.{html,gif} \
		${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/libref/* \
		${PREFIX}/share/doc/ocaml/html/libref
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc
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
