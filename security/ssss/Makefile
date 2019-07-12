# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:37 sthen Exp $

COMMENT=	split secrets using Shamir's Secret Sharing Scheme

DISTNAME=	ssss-0.5
REVISION=	0

CATEGORIES=	security

HOMEPAGE=	http://point-at-infinity.org/ssss/

MAINTAINER=	Denis Fondras <denis@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	c gmp

MASTER_SITES=	http://point-at-infinity.org/ssss/

LIB_DEPENDS=	devel/gmp

MAKE_FLAGS=	CC="${CC}"
CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib

ALL_TARGET=	ssss-split ssss-combine

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ssss-split ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/ssss-combine ${PREFIX}/bin

.include <bsd.port.mk>
