# $OpenBSD: Makefile,v 1.1 2015/06/24 06:52:15 ajacoutot Exp $

COMMENT=		extra library for libfm

PKGNAME=		libfm-extra-${V}
REVISION=		0

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread z

LIB_DEPENDS=		devel/glib2

CONFIGURE_ARGS +=	--with-extra-only

.include <bsd.port.mk>
