# $OpenBSD: Makefile,v 1.20 2008/11/23 18:18:51 jasper Exp $

COMMENT =	gtk livejournal client

DISTNAME =	logjam-4.5.3
PKGNAME =	${DISTNAME}p0
CATEGORIES =	misc x11

HOMEPAGE =	http://logjam.danga.com/

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB =	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xcomposite \
		Xdamage Xrandr Xrender atk-1.0 c cairo crypto expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 idn m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread ssl z

MASTER_SITES =	http://logjam.danga.com/download/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		sqlite3::databases/sqlite3 \
		curl.>=2::net/curl \
		xml2::textproc/libxml

RUN_DEPENDS =	::devel/desktop-file-utils

USE_X11 =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-gnome \
			--without-librsvg \
			--without-gtkspell \
			--without-xmms

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
