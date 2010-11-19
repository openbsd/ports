# $OpenBSD: Makefile,v 1.29 2010/11/19 07:23:12 espie Exp $

COMMENT =	gtk livejournal client

DISTNAME =	logjam-4.5.3
REVISION =	5
CATEGORIES =	misc x11

HOMEPAGE =	http://logjam.danga.com/

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 idn m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs ssl xcb z
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0 gdk-x11-2.0 sqlite3 curl xml2

MASTER_SITES =	http://logjam.danga.com/download/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	x11/gtk+2 \
		databases/sqlite3 \
		net/curl \
		textproc/libxml

RUN_DEPENDS =	devel/desktop-file-utils

USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-gnome \
			--without-librsvg \
			--without-gtkspell \
			--without-xmms

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
