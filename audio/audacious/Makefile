# $OpenBSD: Makefile,v 1.37 2012/07/05 09:29:28 dcoppa Exp $

SHARED_ONLY =		Yes

COMMENT =		gtk+3 media player based on BMP and XMMS

DISTNAME =		audacious-3.2.4

SHARED_LIBS =		audclient	2.1 	# 2.1
SHARED_LIBS +=		audcore		1.1 	# 1.1
SHARED_LIBS +=		audgui		1.1	# 1.1
SHARED_LIBS +=		audtag		1.1	# 1.1

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# GPLv3
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1>=6 dbus-glib-1 expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gtk-3
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 guess
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

BUILD_DEPENDS =		textproc/libxml
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		devel/libguess \
			x11/dbus-glib \
			x11/dbus \
			x11/gtk+3

MAKE_ENV =		LIBaudclient_VERSION=${LIBaudclient_VERSION} \
			LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudgui_VERSION=${LIBaudgui_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

NO_REGRESS =	Yes

.include <bsd.port.mk>
