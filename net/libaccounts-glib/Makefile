COMMENT =	GLib-based client library for the accounts database

CATEGORIES =	net

V =		1.26
DISTNAME =	libaccounts-glib-${V}

SHARED_LIBS +=  accounts-glib             0.0 # 0.0

MASTER_SITES =		https://gitlab.com/accounts-sso/libaccounts-glib/-/archive/${V}/

# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 sqlite3 xml2

MODULES =	lang/python \
		devel/meson

MODPY_RUNDEP =	No

CONFIGURE_STYLE = meson

BUILD_DEPENDS =	lang/vala \
		devel/check \
		textproc/gtk-doc

LIB_DEPENDS =	databases/sqlite3 \
		devel/glib2 \
		textproc/libxml

.include <bsd.port.mk>
