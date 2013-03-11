# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:42 espie Exp $

COMMENT=	SGML parser and entity manager

DISTNAME=	lq-sp-1.3.4.12
REVISION=	0
CATEGORIES=	textproc
HOMEPAGE=	http://www.htmlhelp.com/tools/validator/offline/

MAINTAINER=	Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++ 

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -fno-implicit-templates" \
		RANLIB=${RANLIB}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nsgmls/lq-nsgmls ${PREFIX}/bin

.include <bsd.port.mk>
