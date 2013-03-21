# $OpenBSD: Makefile,v 1.33 2013/03/21 08:45:13 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing shorten files

DISTNAME=	xmms-shn-2.4.1
REVISION=	5
CATEGORIES=	audio
HOMEPAGE=	http://www.etree.org/shnutils/xmms-shn/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xi gdk glib gmodule gtk \
			m xcb

MASTER_SITES=	${HOMEPAGE}dist/src/

MODULES +=	devel/gettext
RUN_DEPENDS=	audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
