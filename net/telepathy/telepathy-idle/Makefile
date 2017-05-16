# $OpenBSD: Makefile,v 1.45 2017/05/16 19:31:34 landry Exp $

COMMENT=		flexible communications framework, IRC component

DISTNAME=		telepathy-idle-0.2.0
REVISION=		1

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-idle/}

WANTLIB += c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 pcre pthread telepathy-glib z

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/py-twisted
RUN_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		net/telepathy/telepathy-glib>=0.22.0
TEST_DEPENDS=		devel/py-twisted

.include <bsd.port.mk>
