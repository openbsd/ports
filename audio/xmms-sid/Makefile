# $OpenBSD: Makefile,v 1.20 2013/03/10 22:55:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing SID files

DISTNAME=	xmms-sid-0.7.4
REVISION=	7
CATEGORIES=	audio
HOMEPAGE=	http://www.tnsp.org/xmms-sid.php

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xi gdk glib gmodule gtk \
			m stdc++ xcb sidplay>=1

MASTER_SITES=	http://www.tnsp.org/xs-files/

LIB_DEPENDS=	audio/libsidplay
RUN_DEPENDS=	audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES +=	devel/gettext

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-prefix=${LOCALBASE}
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
