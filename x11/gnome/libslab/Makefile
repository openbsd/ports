# $OpenBSD: Makefile,v 1.1.1.1 2010/10/25 10:23:29 ajacoutot Exp $

COMMENT=	interface components library

GNOME_PROJECT=	libslab
GNOME_VERSION=	2.30.0

SHARED_LIBS +=  slab                 0.0      # 2.0

# bring in some fixes from upstream GIT
MASTER_SITES0=	http://www.bsdfrog.org/OpenBSD/distfiles/
PATCHFILES=	libslab-git-20101025.diff:0
PATCH_DIST_STRIP= -p1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm drm
WANTLIB += expat fontconfig freetype m pixman-1 pthread-stubs
WANTLIB += xcb xcb-atom xcb-aux xcb-event xcb-render xcb-shm z
WANTLIB += ORBit-2 atk-1.0 cairo croco-0.6 execinfo gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-2
WANTLIB += gnome-menu gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 xml2 pcre png rsvg-2
WANTLIB += startup-notification-1

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	::x11/gnome/menus \
		::x11/gnome/desktop \
		::x11/gnome/librsvg

CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
