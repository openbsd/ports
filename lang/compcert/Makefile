# $OpenBSD: Makefile,v 1.27 2021/03/10 15:00:53 daniel Exp $

ONLY_FOR_ARCHS =	aarch64 amd64 i386 powerpc

COMMENT =		high assurance C compiler

V =			3.8.20210309
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
#GH_TAGNAME =		v${V}
GH_COMMIT =		6bf310dd678285dc193798e89fc2c441d8430892
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
CONFIGURE_ARGS  = -mandir ${PREFIX}/man \
		  -libdir ${PREFIX}/lib \
		  -toolprefix e \
		  -no-standard-headers \
		  ${MACHINE_ARCH}-bsd

BUILD_DEPENDS =	lang/ocaml>=4.05 \
		math/coq>=8.8.0 \
		sysutils/findlib \
		devel/ocaml-menhir>=20190626

RUN_DEPENDS =	lang/gcc/${MODGCC4_VERSION}

post-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/compcert
	sed -i -e "s,^stdlib_path=.*,stdlib_path=${TRUEPREFIX}/lib," \
		${PREFIX}/share/compcert/compcert.ini

.include <bsd.port.mk>
