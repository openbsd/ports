# $OpenBSD: Makefile,v 1.43 2012/04/03 06:45:53 ajacoutot Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.18.0

SHARED_LIBS +=	telepathy-glib       69.0      # 70.0

HOMEPAGE=		${HOMEPAGE_TP:=Telepathy GLib}

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-glib/}

WANTLIB += dbus-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += dbus-glib-1 pcre z

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=           No
MODPY_ADJ_FILES=	tests/all-errors-documented.py

BUILD_DEPENDS=		devel/gobject-introspection>=1.30.0 \
			lang/vala \
			textproc/libxslt
LIB_DEPENDS=		x11/dbus-glib

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--enable-vala-bindings
#CONFIGURE_ARGS+=	--enable-backtrace (add -llibexecinfo)
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
