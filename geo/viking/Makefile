# $OpenBSD: Makefile,v 1.22 2014/06/06 11:18:24 kirby Exp $

COMMENT =	GPS track manager

DISTNAME =	viking-1.5.1

CATEGORIES =	geo x11

HOMEPAGE =	http://viking.sourceforge.net/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=viking/}
EXTRACT_SUFX = .tar.bz2

MODULES =	devel/gettext x11/gnome

CONFIGURE_STYLE =	gnu
MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS =	archivers/bzip2 \
		devel/libidn \
		devel/libmagic \
		graphics/libexif \
		misc/gpsd \
		net/curl \
		x11/gtk+2
RUN_DEPENDS =	geo/gpsbabel

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 bz2 c cairo crypto curl expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gps gtk-x11-2.0 exif
WANTLIB += idn m magic pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread ssl z

post-install:
	@rm -f ${PREFIX}/share/gnome/help/viking/C/figures/*
	${INSTALL_DATA} ${WRKSRC}/help/C/figures/* \
		${PREFIX}/share/gnome/help/viking/C/figures/

.include <bsd.port.mk>
