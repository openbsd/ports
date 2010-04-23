# $OpenBSD: Makefile,v 1.17 2010/04/23 17:59:12 jasper Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.11.3
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	telepathy-glib       6.0      # .35.1

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-glib/}

WANTLIB += dbus-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=           No

BUILD_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		dbus-glib-1::x11/dbus-glib

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
#CONFIGURE_ARGS+=	--enable-backtrace (add -llibexecinfo)
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/tests/all-errors-documented.py

.include <bsd.port.mk>
