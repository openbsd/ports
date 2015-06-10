# $OpenBSD: Makefile,v 1.34 2015/06/10 21:53:49 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing shorten files

DISTNAME=	xmms-shn-2.4.1
REVISION=	6
CATEGORIES=	audio
HOMEPAGE=	http://www.etree.org/shnutils/xmms-shn/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk \
			m pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}dist/src/

MODULES +=	devel/gettext
RUN_DEPENDS=	audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
