# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:51 sthen Exp $

COMMENT =		HTTP web service mocking library

DISTNAME =		uhttpmock-0.5.1
SHARED_LIBS +=	uhttpmock-0.0        0.1      # 2.0
REVISION =		0

CATEGORIES =		net devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv intl lzma
WANTLIB += m pcre pthread soup-2.4 sqlite3 xml2 z

MASTER_SITES =		http://tecnocode.co.uk/downloads/uhttpmock/
EXTRACT_SUFX =		.tar.xz


MODULES =		x11/gnome

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

MODGNOME_TOOLS =	gobject-introspection vala

LIB_DEPENDS =		devel/libsoup

PORTHOME =		${WRKDIST}

.include <bsd.port.mk>
