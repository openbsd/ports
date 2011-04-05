# $OpenBSD: Makefile,v 1.28 2011/04/05 18:52:26 jasper Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.14.3

SHARED_LIBS +=	telepathy-glib       8.0      # .54.0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-glib/}

WANTLIB += dbus-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += dbus-glib-1 pcre z

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=           No

BUILD_DEPENDS=		devel/gobject-introspection>=0.9.12p0 \
			lang/vala \
			textproc/libxslt
LIB_DEPENDS=		x11/dbus-glib

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection \
			--enable-vala-bindings
#CONFIGURE_ARGS+=	--enable-backtrace (add -llibexecinfo)
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_PYTHON="${MODPY_BIN}"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/telepathy-glib/Makefile.in \
		${WRKSRC}/tests/all-errors-documented.py

.include <bsd.port.mk>
