# $OpenBSD: Makefile,v 1.25 2015/08/24 10:01:10 sthen Exp $

COMMENT=		automatic color temperature adjustment

V=			1.10
DISTNAME=		redshift-${V}
REVISION=		2

GH_PROJECT=		redshift
GH_ACCOUNT=		jonls
DISTFILES=		v${V}${EXTRACT_SUFX}

CATEGORIES=		misc graphics

HOMEPAGE=		http://jonls.dk/redshift/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xxf86vm c drm ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 m pcre pthread pthread-stubs
WANTLIB += xcb xcb-randr xcb-render z

MODULES=		devel/gettext \
			lang/python \
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

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-gui \
			--disable-geoclue

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./bootstrap

.include <bsd.port.mk>
