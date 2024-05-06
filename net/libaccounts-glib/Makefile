COMMENT =	GLib-based client library for the accounts database

CATEGORIES =	net

V =		1.26
DISTNAME =	libaccounts-glib-${V}
REVISION =	3

SHARED_LIBS +=  accounts-glib             0.0 # 0.0

SITES =	https://gitlab.com/accounts-sso/libaccounts-glib/-/archive/${V}/

# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 sqlite3 xml2

MODULES =	lang/python \
		devel/meson

MODPY_RUNDEP =	No

CONFIGURE_STYLE = meson

RUN_DEPENDS =	devel/py-gobject3${MODPY_FLAVOR}

BUILD_DEPENDS =	lang/vala \
		devel/check \
		devel/gobject-introspection \
		devel/py-gobject3${MODPY_FLAVOR} \
		textproc/gtk-doc

LIB_DEPENDS =	databases/sqlite3 \
		devel/glib2 \
		textproc/libxml

.include <bsd.port.mk>
