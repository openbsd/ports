# $OpenBSD: Makefile,v 1.24 2020/11/15 03:02:19 daniel Exp $

ONLY_FOR_ARCHS =	aarch64 amd64 i386 powerpc

COMMENT =		high assurance C compiler

V =			3.7.20201114
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
#GH_TAGNAME =		v${V}
GH_COMMIT =		27beb944ff6ff18ea612c116e414eb40ce1320a6
DISTNAME =		${GH_PROJECT}-${V}
PKGNAME =		${DISTNAME:L}

HOMEPAGE =		https://compcert.org/

CATEGORIES =		lang

# INRIA Non-Commercial License Agreement.
PERMIT_PACKAGE =	Yes

WANTLIB	+= c m

COMPILER	= ports-gcc

USE_GMAKE	= Yes

CONFIGURE_STYLE = simple
CONFIGURE_ARGS  = -no-standard-headers \
		  ${MACHINE_ARCH}-bsd

BUILD_DEPENDS =	lang/ocaml>=4.05 \
		math/coq>=8.8.0 \
		sysutils/findlib \
		devel/ocaml-menhir>=20190626

RUN_DEPENDS =	lang/gcc/${MODGCC4_VERSION}

post-extract:
	sed -i -e 's/gcc/egcc/g' ${WRKSRC}/configure

post-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/compcert
	sed -i -e "s,^stdlib_path=.*,stdlib_path=${TRUEPREFIX}/lib," \
		${PREFIX}/share/compcert/compcert.ini

.include <bsd.port.mk>
