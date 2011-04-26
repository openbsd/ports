# $OpenBSD: Makefile,v 1.1.1.1 2011/04/26 18:21:51 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		collection of theme engines for GTK+3

GNOME_PROJECT=		gtk-engines
GNOME_VERSION=		2.91.1

# warning: PKGNAME does not default to ${DISTNAME}
PKGNAME=		gtk3-engines-${GNOME_VERSION}

CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z

LIB_DEPENDS=	x11/gtk+3
RUN_DEPENDS=	x11/hicolor-icon-theme

MODULES=		devel/gettext \
			x11/gnome

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--disable-static \
			--enable-animation
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# nm: unknown option -- D
NO_REGRESS=		Yes

.include <bsd.port.mk>
