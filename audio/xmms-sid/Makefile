# $OpenBSD: Makefile,v 1.12 2008/01/14 01:16:37 jakemsr Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing SID files

DISTNAME=	xmms-sid-0.7.4
PKGNAME=	${DISTNAME}p3
CATEGORIES=	audio
HOMEPAGE=	http://www.tnsp.org/xmms-sid.php

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk \
			iconv intl m stdc++

MASTER_SITES=	http://www.tnsp.org/xs-files/

LIB_DEPENDS=	sidplay.>=1::audio/libsidplay
RUN_DEPENDS=	::audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-prefix=${LOCALBASE}
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
