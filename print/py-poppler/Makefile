# $OpenBSD: Makefile,v 1.20 2019/07/12 20:48:57 sthen Exp $

COMMENT=	python bindings for poppler

DISTNAME=	pypoppler-0.12.1
PKGNAME=        ${DISTNAME:S/^py/py-/}
CATEGORIES=	print

REVISION=	13

MASTER_SITES=	${HOMEPAGE}/trunk/development/+download/
HOMEPAGE=	http://launchpad.net/poppler-python/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl jpeg lcms2 m openjp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png poppler-glib>=8
WANTLIB += poppler>=10 pthread ${COMPILER_LIBCXX} tiff xcb xcb-render
WANTLIB += xcb-shm z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		lang/python

LIB_DEPENDS=		devel/libffi \
			print/poppler>=0.16
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/py-gtk2>=2.10

CONFIGURE_STYLE=	gnu

LIBTOOL_FLAGS+= 	--tag=disable-static

.include <bsd.port.mk>
