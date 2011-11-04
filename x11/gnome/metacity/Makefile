# $OpenBSD: Makefile,v 1.76 2011/11/04 09:56:29 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	lightweight window manager

GNOME_PROJECT=	metacity
GNOME_VERSION=	2.34.1
REVISION=	7

SHARED_LIBS +=  metacity-private     1.0      # .0.0

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm atk-1.0 c cairo canberra canberra-gtk dbus-1
WANTLIB += dbus-glib-1 drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 gtop-2.0 kvm ltdl m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 vorbis vorbisfile
WANTLIB += xcb xcb-aux xcb-render xcb-shm z stdc++

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	devel/startup-notification \
		audio/libcanberra,-gtk \
		devel/libgtop2
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/gnome/zenity \
		x11/gnome/themes-standard \
		fonts/cantarell-fonts

MODGNOME_TOOLS= yelp
SEPARATE_BUILD=	concurrent
MODGNOME_DESKTOP_FILE=	Yes
MODGCONF2_SCHEMAS_DIR= metacity

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/metacity
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/metacity/
	${INSTALL_DATA} ${WRKSRC}/doc/theme-format.txt ${PREFIX}/share/doc/metacity/
	${INSTALL_DATA} ${WRKSRC}/doc/metacity-theme.dtd ${PREFIX}/share/doc/metacity/

.include <bsd.port.mk>
