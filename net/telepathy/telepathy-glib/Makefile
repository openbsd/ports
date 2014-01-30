# $OpenBSD: Makefile,v 1.55 2014/01/30 10:09:58 jasper Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.22.1

SHARED_LIBS +=	telepathy-glib       79.0      # 80.1

HOMEPAGE=		${HOMEPAGE_TP:=Telepathy GLib}

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-glib/}

WANTLIB += dbus-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += dbus-glib-1 pcre z pthread

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=           No
MODPY_ADJ_FILES=	tests/all-errors-documented.py

BUILD_DEPENDS=		devel/gobject-introspection>=1.30.0 \
			lang/vala \
			textproc/libxslt
LIB_DEPENDS=		x11/dbus-glib

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection \
			--enable-vala-bindings
#CONFIGURE_ARGS+=	--enable-backtrace (add -llibexecinfo)

.include <bsd.port.mk>
