# $OpenBSD: Makefile,v 1.7 2010/10/24 21:21:00 ajacoutot Exp $

COMMENT=	mpeg-1 video player

VERSION=	0.4.1
DISTNAME=	enjoympeg-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics x11

HOMEPAGE=	http://people.freenet.de/for_Ki/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread pthread-stubs usbhid xcb

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	smpeg.>=1.3:smpeg-*:devel/smpeg


SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/enjoympeg
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/enjoympeg

.include <bsd.port.mk>
