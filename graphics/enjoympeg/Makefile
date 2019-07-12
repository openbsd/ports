# $OpenBSD: Makefile,v 1.15 2019/07/12 21:02:21 sthen Exp $

COMMENT=	mpeg-1 video player

VERSION=	0.4.1
DISTNAME=	enjoympeg-${VERSION}
REVISION =	3
CATEGORIES=	graphics x11

HOMEPAGE=	http://people.freenet.de/for_Ki/

PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS =	devel/smpeg
WANTLIB =	SDL c pthread smpeg>=1.3


SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/enjoympeg
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/enjoympeg

.include <bsd.port.mk>
