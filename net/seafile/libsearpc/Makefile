# $OpenBSD: Makefile,v 1.13 2019/08/02 16:44:41 sthen Exp $

COMMENT =		simple RPC framework based on GObject system

GH_ACCOUNT =		haiwen
GH_PROJECT =		libsearpc
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v3.1-latest" tag
GH_COMMIT =		2803f8d5cff4db632015c061e032d19f9c3a26eb
DISTNAME =		libsearpc-3.1pl20190719

SHARED_LIBS +=		searpc			0.0 # 1.2

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 iconv intl jansson pcre pthread

MODULES =		lang/python

LIB_DEPENDS =		devel/glib2 \
			devel/jansson

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf

MODPY_ADJ_FILES =	lib/searpc-codegen.py pysearpc/pygencode.py

.include <bsd.port.mk>
