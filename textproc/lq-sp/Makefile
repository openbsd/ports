# $OpenBSD: Makefile,v 1.19 2019/07/12 20:50:01 sthen Exp $

COMMENT=	SGML parser and entity manager

DISTNAME=	lq-sp-1.3.4.12
REVISION =	4
CATEGORIES=	textproc
HOMEPAGE=	http://www.htmlhelp.com/tools/validator/offline/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX} 

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -fno-implicit-templates" \
		RANLIB=${RANLIB}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nsgmls/lq-nsgmls ${PREFIX}/bin

.include <bsd.port.mk>
