# $OpenBSD: Makefile,v 1.86 2020/06/09 17:34:14 chrisz Exp $

COMMENT =	   ML language with complete class-based objective system

# XXX Don't even think of updating ocaml alone.
# Do check that the ports that depend on it still work, or repair them.
VERSION=		4.10.0

PKGNAME =		ocaml-${VERSION:C/\+//}

# OCaml has no binary compatibility between releases.
PKGSPEC =	ocaml-=${VERSION:C/\+//}

CATEGORIES=	lang
# Remove last version component ocaml-X.XX.X -> ocaml-X.XX
BASENAME =	${DISTNAME:C/\.[^.]*$//}
MASTER_SITES=	https://caml.inria.fr/pub/distrib/${BASENAME}/
DOCFILES=	${BASENAME}-refman-html.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}
DISTNAME =	ocaml-${VERSION}

HOMEPAGE=	https://ocaml.org/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# QPL/LGPL
PERMIT_PACKAGE=	Yes

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	gnu autoconf no-autoheader
CONFIGURE_ENV+=		CFLAGS="${CFLAGS}" \
			CPPFLAGS="${CFLAGS} ${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"
CONFIGURE_ARGS +=	--disable-force-safe-string

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

# non-PIC assembly in asmrun/i386.S
.if ${MACHINE_ARCH} == "i386"
LDFLAGS+=		-Wl,-z,notext
.endif

USE_GMAKE=	Yes

WANTLIB =		c iberty m pthread z

# for libbfd (used by ocamlobjinfo on .cmxs files)
BUILD_DEPENDS +=	devel/gdb

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mocaml_native}
ALL_TARGET=	world.opt
PKG_ARGS +=	-Dnative=1
TEST_DEPENDS +=	${BUILD_PKGPATH}

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

# PFRAG.native was generated from PLIST with:
# egrep '(ocamlopt|\.cmx|\.cmxa|\.cmxs|\.opt|opt\.1|opt.cmi|\.native|\.o)$'

# One test in the suite (testsocket.ml) requires an active
# connection to internet
TEST_IS_INTERACTIVE =		Yes

do-test:
	@cd ${WRKSRC}/testsuite && ulimit -Sn 256 && ${MAKE_PROGRAM} all

.include <bsd.port.mk>
