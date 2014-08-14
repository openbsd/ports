# $OpenBSD: Makefile,v 1.13 2014/08/14 08:26:10 ajacoutot Exp $

COMMENT=		GLib library wrapping libgit2

V=			0.0.20
PROJECT=		libgit2-glib
SHARED_LIBS +=	git2-glib-1.0        1.5      # 0.0
REVISION=		0

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/${PROJECT}/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

MODPY_VERSION=          ${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
LIB_DEPENDS=		devel/gobject-introspection \
			devel/libgit2/libgit2>=0.21.0

USE_GMAKE=		Yes

WANTLIB += crypto ffi gio-2.0 girepository-1.0 git2 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 m pcre pthread ssh2 ssl z

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
