# $OpenBSD: Makefile,v 1.36 2020/07/03 21:12:58 sthen Exp $

COMMENT=		automatic color temperature adjustment

V=			1.12
DISTNAME=		redshift-$V
REVISION=		3

CATEGORIES=		misc graphics

HOMEPAGE=		http://jonls.dk/redshift/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xau Xdmcp Xext Xxf86vm c drm ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl m pcre pthread xcb
WANTLIB += xcb-randr z

MASTER_SITES=		https://github.com/jonls/redshift/releases/download/v$V/
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python \
			textproc/intltool

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=	src/redshift-gtk/redshift-gtk.in

LIB_DEPENDS=		devel/glib2

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/py-xdg${MODPY_FLAVOR} \
			geo/geoclue2 \
			x11/gtk+3,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-gui \
			--disable-geoclue

.include <bsd.port.mk>
