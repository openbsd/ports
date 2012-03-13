# $OpenBSD: Makefile,v 1.1.1.1 2012/03/13 01:08:42 fgsch Exp $

COMMENT =	japanese-english dictionary program

V =		3.2.0
DISTNAME =	gwaei-${V}

SHARED_LIBS =	waei	0.0

CATEGORIES =	japanese

HOMEPAGE =	http://gwaei.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo \
		cairo-gobject crypto curl drm expat ffi fontconfig \
		freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-3 idn m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		ssl stdc++ xcb xcb-render xcb-shm z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gwaei/${V}/}

MODULES =	devel/gettext \
		textproc/intltool

BUILD_DEPENDS =	x11/gnome/doc-utils
RUN_DEPENDS =	devel/desktop-file-utils \
		fonts/ja-kanjistrokeorders-ttf \
		textproc/docbook \
		x11/gtk+2,-guic
LIB_DEPENDS =	net/curl \
		x11/gtk+3

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += ${CONFIGURE_SHARED} \
		  ENCHANT="${LOCALBASE}/bin/enchant"

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/gwaei/help/C/*.{in,xml}

.include <bsd.port.mk>
