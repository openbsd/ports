# $OpenBSD: Makefile,v 1.9 2013/04/27 16:02:59 kili Exp $

COMMENT=	python bindings for poppler

DISTNAME=	pypoppler-0.12.1
PKGNAME=        ${DISTNAME:S/^py/py-/}
CATEGORIES=	print

REVISION=	5

MASTER_SITES=	${HOMEPAGE}/trunk/development/+download/
HOMEPAGE=	http://launchpad.net/poppler-python/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			lang/python

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg lcms2 m openjpeg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png poppler>=10 poppler-glib>=8
WANTLIB += pthread-stubs stdc++ tiff xcb xcb-render xcb-shm z

LIB_DEPENDS=		devel/libffi \
			print/poppler>=0.16
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/py-gtk2>=2.10

CONFIGURE_STYLE=	gnu

LIBTOOL_FLAGS+= 	--tag=disable-static

.include <bsd.port.mk>
