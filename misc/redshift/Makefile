# $OpenBSD: Makefile,v 1.20 2014/09/01 15:11:11 ajacoutot Exp $

COMMENT=		automatic color temperature adjustment

V=			1.9.1
DISTNAME=		redshift-${V}

GH_PROJECT=		redshift
GH_ACCOUNT=		jonls
DISTFILES=		v${V}${EXTRACT_SUFX}

CATEGORIES=		misc graphics

HOMEPAGE=		http://jonls.dk/redshift/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xxf86vm c dbus-1 dbus-glib-1 drm geoclue glib-2.0
WANTLIB += gobject-2.0 m pthread xcb xcb-randr xml2

MODULES=		devel/gettext \
			lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=	src/redshift-gtk/redshift-gtk.in

LIB_DEPENDS=		geo/geoclue

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-xdg${MODPY_FLAVOR} \
			x11/gtk+2,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-gui

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
