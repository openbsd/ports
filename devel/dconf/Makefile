# $OpenBSD: Makefile,v 1.1.1.1 2010/10/27 10:50:04 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	configuration backend system

GNOME_PROJECT=	dconf
GNOME_VERSION=	0.5.1

SHARED_LIBS+=	dconf 0.0 # 0.0.0

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/dconf

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm c drm expat fontconfig
WANTLIB += freetype m pixman-1 pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 png xml2

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	::lang/vala
LIB_DEPENDS=	::x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-gtk-doc \
		--disable-introspection

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{bin,client,editor}/Makefile.in

.include <bsd.port.mk>
