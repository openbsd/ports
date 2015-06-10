# $OpenBSD: Makefile,v 1.22 2015/06/10 21:53:49 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing SID files

DISTNAME=	xmms-sid-0.7.4
REVISION=	8
CATEGORIES=	audio
HOMEPAGE=	http://www.tnsp.org/xmms-sid.php

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk \
			m pthread-stubs stdc++ xcb sidplay>=1

MASTER_SITES=	http://www.tnsp.org/xs-files/

LIB_DEPENDS=	audio/libsidplay
RUN_DEPENDS=	audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES +=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-prefix=${LOCALBASE}
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
