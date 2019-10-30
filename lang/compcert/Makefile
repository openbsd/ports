# $OpenBSD: Makefile,v 1.15 2019/10/30 06:08:15 daniel Exp $

ONLY_FOR_ARCHS =	aarch64 amd64 i386 powerpc

COMMENT =		high assurance C compiler

V =			3.6
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
GH_TAGNAME =		v${V}
DISTNAME =		${GH_PROJECT}-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		1

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
