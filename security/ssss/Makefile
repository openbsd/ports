# $OpenBSD: Makefile,v 1.1.1.1 2018/10/01 11:39:44 denis Exp $

COMMENT=	split secrets using Shamir's Secret Sharing Scheme

DISTNAME=	ssss-0.5

CATEGORIES=	security

HOMEPAGE=	http://point-at-infinity.org/ssss/

MAINTAINER=	Denis Fondras <denis@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
