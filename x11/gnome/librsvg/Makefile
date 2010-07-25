# $OpenBSD: Makefile,v 1.48 2010/07/25 08:15:33 ajacoutot Exp $

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.26.3
REVISION=	0

SHARED_LIBS +=	rsvg-2         28.0           # .28.2

CATEGORIES=	devel

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 croco-0.6
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xml2 z gsf-1
WANTLIB += xcb-render xcb-render-util gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gtk-x11-2.0

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	::x11/gtk+2 \
		::devel/libgsf \
		::www/libcroco
RUN_DEPENDS=	::x11/gtk-engines2

USE_X11=		Yes
CONFIGURE_ARGS+=	--with-svgz \
			--with-croco \
			--enable-gtk-theme \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
