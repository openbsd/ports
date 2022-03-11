COMMENT=		extra library for libfm

PKGNAME=		libfm-extra-${V}

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl m pcre pthread z

LIB_DEPENDS=		devel/glib2

CONFIGURE_ARGS=		--with-extra-only

.include <bsd.port.mk>
