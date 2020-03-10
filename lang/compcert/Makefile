# $OpenBSD: Makefile,v 1.17 2020/03/10 03:31:45 daniel Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		high assurance C compiler

V =			3.6.20200212
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
#GH_TAGNAME =		v${V}
GH_COMMIT =		9b881b7928ab7d21e9981133bef5b26e33b6cd9d
DISTNAME =		${GH_PROJECT}-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		0

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
