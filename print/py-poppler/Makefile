# $OpenBSD: Makefile,v 1.10 2015/05/05 17:00:18 sthen Exp $

COMMENT=	python bindings for poppler

DISTNAME=	pypoppler-0.12.1
PKGNAME=        ${DISTNAME:S/^py/py-/}
CATEGORIES=	print

REVISION=	6

MASTER_SITES=	${HOMEPAGE}/trunk/development/+download/
HOMEPAGE=	http://launchpad.net/poppler-python/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz jpeg lcms2 m openjpeg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png poppler-glib>=8
WANTLIB += poppler>=10 pthread-stubs pthread stdc++ tiff xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		devel/libffi \
			print/poppler>=0.16
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/py-gtk2>=2.10

CONFIGURE_STYLE=	gnu

LIBTOOL_FLAGS+= 	--tag=disable-static

.include <bsd.port.mk>
