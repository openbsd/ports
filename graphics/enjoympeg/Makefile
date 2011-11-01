# $OpenBSD: Makefile,v 1.10 2011/11/01 20:30:49 jasper Exp $

COMMENT=	mpeg-1 video player

VERSION=	0.4.1
DISTNAME=	enjoympeg-${VERSION}
REVISION =	1
CATEGORIES=	graphics x11

HOMEPAGE=	http://people.freenet.de/for_Ki/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS =	devel/smpeg
WANTLIB =	SDL c pthread smpeg>=1.3


SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/enjoympeg
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/enjoympeg

.include <bsd.port.mk>
