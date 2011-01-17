# $OpenBSD: Makefile,v 1.24 2011/01/17 17:57:42 jasper Exp $

COMMENT=		flexible communications framework, IRC component

DISTNAME=		telepathy-idle-0.1.6
REVISION=		3

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-idle/}

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
