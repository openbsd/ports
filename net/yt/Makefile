# $OpenBSD: Makefile,v 1.1.1.1 2007/02/04 13:23:12 jasper Exp $

COMMENT=	"customizable script to fetch youtube videos"

DISTNAME=	yt-1
CATEGORIES=	misc

HOMEPAGE=	http://ambientworks.net/~pedro/yt/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

NO_BUILD=		Yes
NO_REGRESS=		Yes
RUN_DEPENDS=		::graphics/ffmpeg \
			::net/curl \
			::net/luasocket

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/yt.lua ${PREFIX}/bin/yt

.include <bsd.port.mk>
