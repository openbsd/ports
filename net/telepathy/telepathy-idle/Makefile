# $OpenBSD: Makefile,v 1.26 2011/04/05 19:53:03 jasper Exp $

COMMENT=		flexible communications framework, IRC component

DISTNAME=		telepathy-idle-0.1.8

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-idle/}

WANTLIB += c crypto dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 pcre pthread ssl telepathy-glib
WANTLIB += gthread-2.0 z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/py-twisted/words
RUN_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		net/telepathy/telepathy-glib

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-silent-rules
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_PYTHON="${MODPY_BIN}"

USE_GROFF =		Yes

.include <bsd.port.mk>
