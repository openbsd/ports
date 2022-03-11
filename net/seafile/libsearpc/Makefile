COMMENT =		simple RPC framework based on GObject system

GH_PROJECT =		libsearpc
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v3.2-latest" tag
GH_COMMIT =		e72c1158c8feb344ef44d2b4a60638e7dbfd1a8e
DISTNAME =		libsearpc-3.2.0pl20220228

SHARED_LIBS +=		searpc		0.0 # 1.2

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 iconv intl jansson pcre pthread

MODULES =		lang/python

LIB_DEPENDS =		devel/glib2 \
			devel/jansson

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--with-python3

MODPY_ADJ_FILES =	lib/searpc-codegen.py pysearpc/pygencode.py

.include <bsd.port.mk>
