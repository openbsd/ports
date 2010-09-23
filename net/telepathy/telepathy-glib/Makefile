# $OpenBSD: Makefile,v 1.23 2010/09/23 20:23:13 ajacoutot Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.12.0

SHARED_LIBS +=	telepathy-glib       7.0      # .45.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-glib/}

WANTLIB += dbus-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += dbus-glib-1 pcre z

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=           No

BUILD_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		::x11/dbus-glib

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-introspection
#CONFIGURE_ARGS+=	--enable-backtrace (add -llibexecinfo)
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/tests/all-errors-documented.py

.include <bsd.port.mk>
