# $OpenBSD: Makefile,v 1.19 2020/06/02 12:58:22 daniel Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		high assurance C compiler

V =			3.7.20200601
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
#GH_TAGNAME =		v${V}
GH_COMMIT =		08491de0566dbd8cfe7a9cd4ca129a5a05caf196
DISTNAME =		${GH_PROJECT}-${V}
PKGNAME =		${DISTNAME:L}

HOMEPAGE =		http://compcert.inria.fr/

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
		devel/ocaml-menhir>=20190626

RUN_DEPENDS =	lang/gcc/${MODGCC4_VERSION}

post-extract:
	sed -i -e 's/gcc/egcc/g' ${WRKSRC}/configure

post-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/compcert
	sed -i -e "s,^stdlib_path=.*,stdlib_path=${TRUEPREFIX}/lib," \
		${PREFIX}/share/compcert/compcert.ini

.include <bsd.port.mk>
