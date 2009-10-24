# $OpenBSD: Makefile,v 1.7 2009/10/24 01:18:01 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	cache saver plugin for Claws Mail

VERSION=	0.10.9
DISTNAME=	cachesaver-${VERSION}
PKGNAME=	claws-mail-cachesaver-${VERSION}p0
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail
DIST_SUBDIR=	claws

HOMEPAGE=	http://www.claws-mail.org/plugins.php?section=downloads
MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

RUN_DEPENDS=	::mail/claws-mail
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
