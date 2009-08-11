# $OpenBSD: Makefile,v 1.42 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.22.3
SHARED_LIBS +=	rsvg-2         24.3           # .24.3
CATEGORIES=	devel
PKGNAME=	${DISTNAME}p2

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread xml2 z \
		pthread-stubs xcb

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		gsf-1::devel/libgsf \
		croco-0.6.>=3::www/libcroco

USE_X11=		Yes
CONFIGURE_ARGS+=	--with-svgz \
			--with-croco \
			--enable-gtk-theme \
			--disable-gtk-doc \
			--disable-mozilla-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
