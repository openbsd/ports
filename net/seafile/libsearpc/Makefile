# $OpenBSD: Makefile,v 1.14 2020/04/06 07:10:09 kirby Exp $

COMMENT =		simple RPC framework based on GObject system

GH_ACCOUNT =		haiwen
GH_PROJECT =		libsearpc
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v3.2.0" tag
GH_COMMIT =		d1fd7518a20b25766ff98d6fde6e40c63626ca0d
DISTNAME =		libsearpc-3.2.0pl20200405

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
