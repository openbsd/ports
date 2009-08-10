# $OpenBSD: Makefile,v 1.25 2009/08/10 06:29:53 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing shorten files

DISTNAME=	xmms-shn-2.4.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	audio
HOMEPAGE=	http://www.etree.org/shnutils/xmms-shn/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk iconv \
			intl m pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}dist/src/

RUN_DEPENDS=	::audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
