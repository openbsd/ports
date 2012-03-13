# $OpenBSD: Makefile,v 1.3 2012/03/13 19:40:27 ajacoutot Exp $

COMMENT =	japanese-english dictionary program

V =		3.2.0
DISTNAME =	gwaei-${V}
REVISION =	1

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
		x11/gnome

RUN_DEPENDS =	fonts/ja-kanjistrokeorders-ttf \
		textproc/docbook
LIB_DEPENDS =	net/curl \
		x11/gtk+3

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += ENCHANT="${LOCALBASE}/bin/enchant"

MODGNOME_TOOLS =	yelp
MODGNOME_DESKTOP_FILE =	Yes
MODGNOME_ICON_CACHE =	Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/gwaei/help/C/*.{in,xml}

.include <bsd.port.mk>
