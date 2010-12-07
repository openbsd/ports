# $OpenBSD: Makefile,v 1.48 2010/12/07 15:01:35 dcoppa Exp $

# XXX Don't even think of updating ocaml alone.
# Do check that the ports that depend on it still work, or repair them. 

NOT_FOR_ARCHS=	hppa

COMMENT=	ML language based on complete class-based objective system

BASENAME=	ocaml-3.12
DISTNAME=	${BASENAME}.0
CATEGORIES=	lang
MASTER_SITES=	http://caml.inria.fr/pub/distrib/${BASENAME}/
DOCFILES=	${BASENAME}-refman.html.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

HOMEPAGE=	http://www.ocaml.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# QPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c curses iberty m pthread z

MODULES+= lang/tcl x11/tk

VMEM_WARNING=	Yes
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

BUILD_DEPENDS +=${MODTK_BUILD_DEPENDS} \
		devel/libbfd
RUN_DEPENDS +=	${MODTK_RUN_DEPENDS}
LIB_DEPENDS +=	${MODTK_LIB_DEPENDS}
WANTLIB +=	${MODTK_WANTLIB}

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "sparc" || \
	${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
	${MACHINE_ARCH} == "powerpc"
ALL_TARGET=	world bootstrap opt opt.opt
PKG_ARGS+=-Dnative=1
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=-Ddynlink=1
.else
PKG_ARGS+=-Ddynlink=0
.endif
.else
ALL_TARGET=	world bootstrap
PKG_ARGS+=-Dnative=0
.endif

# XXX regress tests only work on archs with native-code compiler
REGRESS_DEPENDS+=	${BUILD_PKGPATH}

post-extract:
	@cp ${WRKSRC}/asmrun/power-elf.S ${WRKSRC}/asmrun/power-bsd.S

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml/html/libref
	@${INSTALL_DATA} ${WRKDIR}/htmlman/*.{html,gif} \
		${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/libref/* \
		${PREFIX}/share/doc/ocaml/html/libref
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc
	@${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/ocaml

# PFRAG.native was generated from PLIST with:
# egrep '(ocamlopt|\.cmx|\.cmxa|\.cmxs|\.opt|opt\.1|opt.cmi|\.native|\.o)$'

# XXX one test in the suite (testsocket.ml) requires an active
# connection to internet
do-regress:
	@cd ${WRKSRC}/testsuite && ulimit -Sn 256 && ${MAKE_PROGRAM} all

.include <bsd.port.mk>
