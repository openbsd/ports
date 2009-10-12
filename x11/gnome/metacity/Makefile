# $OpenBSD: Makefile,v 1.40 2009/10/12 00:31:36 ajacoutot Exp $

COMMENT=	lightweight window manager

GNOME_PROJECT=	metacity
GNOME_VERSION=	2.28.0

SHARED_LIBS +=  metacity-private     1.0      # .0.0

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += dbus-1 dbus-glib-1 execinfo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 ltdl m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs vorbis vorbisfile xcb xcb-atom xcb-aux
WANTLIB += xcb-event z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	startup-notification-1::devel/startup-notification \
		canberra-gtk,canberra::audio/libcanberra
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/gnome/zenity

SEPARATE_BUILD=	concurrent
USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= metacity

CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/metacity
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/metacity/
	${INSTALL_DATA} ${WRKSRC}/doc/theme-format.txt ${PREFIX}/share/doc/metacity/
	${INSTALL_DATA} ${WRKSRC}/doc/metacity-theme.dtd ${PREFIX}/share/doc/metacity/

.include <bsd.port.mk>
