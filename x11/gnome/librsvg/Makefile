# $OpenBSD: Makefile,v 1.73 2012/03/29 06:32:39 ajacoutot Exp $

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.36.0

SHARED_LIBS +=	rsvg-2         38.0           # .38.0

CATEGORIES=	devel

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += c cairo croco-0.6 drm expat ffi fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	goi

LIB_DEPENDS=	graphics/gdk-pixbuf2 \
		devel/pango \
		www/libcroco \
		textproc/libxml

CONFIGURE_ARGS=	--disable-gtk-theme \
		--disable-tools \
		--disable-Bsymbolic

# these wil be built if gtk+2 and gtk+3 are installed at compile time,
# but we don't want to add these dependencies (not really needed for
# proper functionnality)
post-install:
	rm -f ${PREFIX}/bin/rsvg-view-3 # gtk+3
	rm -f ${PREFIX}/man/man1/rsvg.1 # gtk+2

.include <bsd.port.mk>
