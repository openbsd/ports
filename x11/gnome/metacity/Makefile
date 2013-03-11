# $OpenBSD: Makefile,v 1.83 2013/03/11 11:46:11 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	lightweight window manager

GNOME_PROJECT=	metacity
GNOME_VERSION=	2.34.13

SHARED_LIBS +=  metacity-private     1.0      # .0.0

CATEGORIES=	x11

HOMEPAGE=	https://live.gnome.org/Metacity

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo canberra canberra-gtk drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += gtop-2.0 kvm ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += stdc++ vorbis vorbisfile xcb xcb-aux xcb-render xcb-shm
WANTLIB += harfbuzz icudata icule icuuc z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

LIB_DEPENDS=	devel/startup-notification \
		audio/libcanberra,-gtk \
		devel/libgtop2
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/gnome/zenity \
		x11/gnome/themes-standard \
		fonts/cantarell-fonts

MODGNOME_TOOLS= yelp
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
