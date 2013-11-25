# $OpenBSD: Makefile,v 1.62 2013/11/25 14:16:23 sthen Exp $

NOT_FOR_ARCHS=	hppa

COMMENT =	ML language based on complete class-based objective system

# XXX Don't even think of updating ocaml alone.
# Do check that the ports that depend on it still work, or repair them. 
# Don't forget to bump version in ocaml.port.mk, too!
VERSION=4.00.1

DISTNAME =	ocaml-${VERSION}

PKGNAME =	ocaml-${VERSION}
# OCaml has no binary compatibility between releases.
PKGSPEC =	ocaml-=${VERSION}

CATEGORIES=	lang
# Remove last version component ocaml-X.XX.X -> ocaml-X.XX
BASENAME =	${DISTNAME:C/\.[^.]*$//}
MASTER_SITES=	http://caml.inria.fr/pub/distrib/${BASENAME}/
DOCFILES=	${BASENAME}-refman-html.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

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
RUN_DEPENDS +=		${MODTK_RUN_DEPENDS}
LIB_DEPENDS +=		${MODTK_LIB_DEPENDS}
WANTLIB =		X11 c curses iberty m pthread z ${MODTK_WANTLIB}

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
