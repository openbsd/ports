# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:48 sthen Exp $

COMMENT =		simple RPC framework based on GObject system

GH_PROJECT = 		libsearpc
GH_TAGNAME = 		v3.1-latest
REVISION =              1

SHARED_LIBS += 		searpc			0.0 # 1.2

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 iconv intl jansson pcre pthread

MODULES =		lang/python

LIB_DEPENDS =		devel/glib2 \
			devel/jansson

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

MODPY_ADJ_FILES = 	lib/searpc-codegen.py pysearpc/pygencode.py

.include <bsd.port.mk>
