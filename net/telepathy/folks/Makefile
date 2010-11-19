# $OpenBSD: Makefile,v 1.3 2010/11/19 22:31:38 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.2.1

SHARED_LIBS +=  folks-telepathy           0.0 # 15.0
SHARED_LIBS +=  folks                     0.0 # 15.0

HOMEPAGE=	http://telepathy.freedesktop.org/wiki/Folks

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += c m pthread dbus-1 dbus-glib-1 gee gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gthread-2.0 gobject-2.0 pcre telepathy-glib
WANTLIB += xml2 z

BUILD_DEPENDS=		devel/gobject-introspection>=0.9.12p0 \
			lang/vala
LIB_DEPENDS=		devel/libgee \
			telepathy-glib-0.12.0p0:net/telepathy/telepathy-glib \
			textproc/libxml
REGRESS_DEPENDS=	${PKGNAME}:${BASE_PKGPATH}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
