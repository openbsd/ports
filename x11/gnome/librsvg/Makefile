# $OpenBSD: Makefile,v 1.43 2009/10/10 10:33:32 jasper Exp $

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.26.0
SHARED_LIBS +=	rsvg-2         28.0           # .28.0
CATEGORIES=	devel

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk bz2 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		gsf-1::devel/libgsf \
		croco-0.6.>=3::www/libcroco
RUN_DEPENDS=	::x11/gtk-engines2

USE_X11=		Yes
CONFIGURE_ARGS+=	--with-svgz \
			--with-croco \
			--enable-gtk-theme \
			--disable-gtk-doc \
			--disable-mozilla-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
