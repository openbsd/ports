# $OpenBSD: Makefile,v 1.3 2015/05/24 17:18:45 bcallah Exp $

COMMENT =	lightweight graphical download manager
DISTNAME =	uget-2.0
CATEGORIES =	www net x11

HOMEPAGE =	http://ugetdm.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject crypto curl fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gstreamer-1.0 gtk-3 idn m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread ssl z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=urlget/}

MODULES =	devel/gettext \
		lang/clang \
		textproc/intltool
MODCLANG_ARCHS =	*
MODCLANG_LANGS =	c

LIB_DEPENDS =	devel/libnotify \
		multimedia/gstreamer1/core \
		net/curl \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		www/aria2 \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# BSD make doesn't install the localization files.
USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS} -std=c11"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/uget/UgetAria2.c

.include <bsd.port.mk>
