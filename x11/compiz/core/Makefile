# $OpenBSD: Makefile,v 1.5 2010/04/27 21:01:51 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	OpenGL window and compositing manager

V =		0.8.2
DISTNAME =	compiz-${V}
PKGNAME =	${DISTNAME}p3

SHARED_LIBS =	decoration	0.0

CATEGORIES =	x11

HOMEPAGE =	http://www.compiz-fusion.org/

# MIT, GPL and LGPL
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP =   Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB += GL GLU ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm atk-1.0 c cairo dbus-1 dbus-glib-1 drm execinfo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 pthread pthread-stubs xcb xcb-atom xcb-aux
WANTLIB += xcb-event xcb-render xcb-render-util z

MASTER_SITES =	http://releases.compiz-fusion.org/${V}/

MODULES =	devel/gconf2 \
		devel/gettext \
		textproc/intltool

MODGCONF2_SCHEMAS_DIR =	compiz

LIB_DEPENDS =	png::graphics/png \
		startup-notification-1::devel/startup-notification \
		wnck-1::devel/libwnck \
		xml2::textproc/libxml \
		xslt::textproc/libxslt

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE	= gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --disable-static \
		 --disable-inotify \
		 --disable-fuse \
		 --disable-librsvg \
		 --disable-metacity \
		 --disable-gnome \
		 --disable-gnome-keybindings \
		 --disable-kde \
		 --disable-kde4 \
		 --disable-kconfig
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/compiz
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
	  ${PREFIX}/share/doc/compiz

.include <bsd.port.mk>
