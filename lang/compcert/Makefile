# $OpenBSD: Makefile,v 1.10 2019/08/24 16:50:27 chrisz Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT =		high assurance C compiler

V =			3.5.20190813
REVISION =		0
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
GH_COMMIT =		192bd462233d0284fa3d5f8e8994a514b549713e
DISTNAME =              ${GH_PROJECT}-${V}
PKGNAME =		${DISTNAME:L}

HOMEPAGE =		http://compcert.inria.fr/

CATEGORIES =		lang

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# INRIA Non-Commercial License Agreement.
PERMIT_PACKAGE =	Yes

WANTLIB	+= c m

COMPILER	= ports-gcc

USE_GMAKE	= Yes

CONFIGURE_STYLE = simple
CONFIGURE_ARGS  = -no-standard-headers \
		  ${MACHINE_ARCH}-bsd

BUILD_DEPENDS =	lang/ocaml>=4.02 \
		math/coq>=8.7.0 \
		devel/ocaml-menhir>=20190626

RUN_DEPENDS =	lang/gcc/${MODGCC4_VERSION}

post-extract:
	sed -i -e 's/gcc/egcc/g' ${WRKSRC}/configure

post-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/compcert
	sed -i -e "s,^stdlib_path=.*,stdlib_path=${TRUEPREFIX}/lib," \
		${PREFIX}/share/compcert/compcert.ini

.include <bsd.port.mk>
