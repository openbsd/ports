# $OpenBSD: Makefile,v 1.1.1.1 2001/07/07 03:04:00 pvalchev Exp $

COMMENT=	"mpeg-1 video player"

VERSION=	0.4.1
DISTNAME=	enjoympeg-${VERSION}
CATEGORIES=	graphics x11
NEED_VERSION=	1.419

HOMEPAGE=	http://people.freenet.de/for_Ki/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	smpeg.1.3:smpeg-*:devel/smpeg

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/enjoympeg
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/enjoympeg

.include <bsd.port.mk>
