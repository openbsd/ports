# $OpenBSD: Makefile,v 1.34 2011/04/26 06:58:31 jasper Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.14.5

SHARED_LIBS +=	telepathy-glib       8.1      # .56.0

HOMEPAGE=		${HOMEPAGE_TP:=Telepathy GLib}

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-glib/}

WANTLIB += dbus-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += dbus-glib-1 pcre z

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=           No
MODPY_ADJ_FILES=	tests/all-errors-documented.py

BUILD_DEPENDS=		devel/gobject-introspection>=0.10.7p4 \
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
