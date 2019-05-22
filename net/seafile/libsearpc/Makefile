# $OpenBSD: Makefile,v 1.11 2019/05/22 17:03:31 kirby Exp $

COMMENT =		simple RPC framework based on GObject system

GH_PROJECT = 		libsearpc
GH_TAGNAME = 		v3.1-latest
REVISION =              1

SHARED_LIBS += 		searpc			0.0 # 1.2

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

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
