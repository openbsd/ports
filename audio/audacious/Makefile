# $OpenBSD: Makefile,v 1.46 2013/12/01 22:37:35 brad Exp $

SHARED_ONLY =		Yes

COMMENT =		Gtk+3 media player

DISTNAME =		audacious-3.4.2

SHARED_LIBS =		audclient	3.0 	# 2.0
SHARED_LIBS +=		audcore		2.1 	# 1.0
SHARED_LIBS +=		audgui		2.1	# 1.0
SHARED_LIBS +=		audtag		2.0	# 1.0

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 guess m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

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

CONFIGURE_STYLE =	gnu

NO_TEST =	Yes

.include <bsd.port.mk>
