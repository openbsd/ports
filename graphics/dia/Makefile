# $OpenBSD: Makefile,v 1.85 2011/12/03 20:30:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	technical diagrams drawing tool

GNOME_PROJECT=	dia
GNOME_VERSION=	0.97.1
REVISION=	11

EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/Dia/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm art_lgpl_2 atk-1.0
WANTLIB += c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += util xcb xcb-render xcb-shm xml2 xslt z ${MODPY_WANTLIB}
WANTLIB += stdc++

RUN_DEPENDS=	devel/xdg-utils
BUILD_DEPENDS=	textproc/docbook-xsl
LIB_DEPENDS=	x11/gtk+2 \
		graphics/libart \
		textproc/libxslt \
		${MODPY_LIB_DEPENDS}

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_CPPFLAGS=-I${LOCALBASE}/include/libpng

MODPY_ADJ_FILES=po-checktrans.py 

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--with-cairo \
		--with-python \
		--disable-db2html \
		--disable-gnome \
		--without-hardbooks \

pre-configure:
	${SUBST_CMD} ${WRKSRC}/app/commands.c

.include <bsd.port.mk>
