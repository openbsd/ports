# $OpenBSD: Makefile,v 1.61 2015/04/04 09:21:03 ajacoutot Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.24.1
REVISION=		1

SHARED_LIBS +=	telepathy-glib       80.0      # 84.1

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-glib/}

WANTLIB += dbus-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += dbus-glib-1 pcre z pthread

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=           No
# https://bugs.freedesktop.org/show_bug.cgi?id=76495
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
