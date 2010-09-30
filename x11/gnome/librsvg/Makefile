# $OpenBSD: Makefile,v 1.53 2010/09/30 07:23:47 ajacoutot Exp $

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.32.0

REVISION=	1

SHARED_LIBS +=	rsvg-2         28.0           # .34.0

CATEGORIES=	devel

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 croco-0.6
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xml2 z
WANTLIB += xcb-render xcb-render-util gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gtk-x11-2.0

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

LIB_DEPENDS=	::x11/gtk+2 \
		::www/libcroco
RUN_DEPENDS=	::x11/gtk-engines2

USE_X11=		Yes
CONFIGURE_ARGS+=	--with-svgz \
			--with-croco \
			--enable-gtk-theme \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/rsvg.in

.include <bsd.port.mk>
