# $OpenBSD: Makefile,v 1.42 2013/10/04 07:40:42 jasper Exp $

COMMENT=		flexible communications framework, IRC component

DISTNAME=		telepathy-idle-0.2.0

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-idle/}

WANTLIB += c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 pcre pthread telepathy-glib z

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/py-twisted/words
RUN_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		net/telepathy/telepathy-glib>=0.22.0
TEST_DEPENDS=		devel/py-twisted/words

.include <bsd.port.mk>
