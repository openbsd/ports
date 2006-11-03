# $OpenBSD: Makefile,v 1.7 2006/11/03 14:29:12 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	"XMMS input plugin for playing SID files"

DISTNAME=	xmms-sid-0.7.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
HOMEPAGE=	http://www.tnsp.org/xmms-sid.php

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi gdk glib gmodule gthread gtk iconv intl m pthread stdc++

MASTER_SITES=	http://www.tnsp.org/xs-files/

LIB_DEPENDS=	sidplay.>=1::audio/libsidplay
RUN_DEPENDS=	::audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-prefix=${LOCALBASE}

.include <bsd.port.mk>
