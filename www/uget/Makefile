# $OpenBSD: Makefile,v 1.15 2016/11/04 11:35:21 sthen Exp $

COMMENT =	lightweight graphical download manager
DISTNAME =	uget-2.0.8
REVISION =	2
CATEGORIES =	www net x11

HOMEPAGE =	http://ugetdm.com/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject crypto curl gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gstreamer-1.0
WANTLIB += gtk-3 intl nghttp2 notify pango-1.0 pangocairo-1.0 pthread
WANTLIB += ssl z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=urlget/}

MODULES =	textproc/intltool

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/gettext \
		devel/libnotify \
		multimedia/gstreamer1/core \
		net/curl \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		www/aria2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# BSD make doesn't install the localization files.
USE_GMAKE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/uget/UgetAria2.c

.include <bsd.port.mk>
