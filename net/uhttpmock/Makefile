# $OpenBSD: Makefile,v 1.9 2020/05/31 09:49:07 jasper Exp $

COMMENT =		HTTP web service mocking library

DISTNAME =		uhttpmock-0.5.2
SHARED_LIBS +=	uhttpmock-0.0        0.1      # 2.0

CATEGORIES =		net devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 soup-2.4
MASTER_SITES =		http://tecnocode.co.uk/downloads/uhttpmock/
EXTRACT_SUFX =		.tar.xz


MODULES =		x11/gnome

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

MODGNOME_TOOLS =	gobject-introspection vala

LIB_DEPENDS =		devel/libsoup

PORTHOME =		${WRKDIST}

.include <bsd.port.mk>
