COMMENT =		simple RPC framework based on GObject system

GH_PROJECT =		libsearpc
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v3.2-latest" tag
GH_COMMIT =		54145b03f4240222e336a9a2f402e93facefde65
DISTNAME =		libsearpc-3.2.0pl20220504
REVISION =		0

SHARED_LIBS +=		searpc		0.0 # 1.2

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 iconv intl jansson pcre2-8 pthread

MODULES =		lang/python

LIB_DEPENDS =		devel/glib2 \
			devel/jansson

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--with-python3

MODPY_ADJ_FILES =	lib/searpc-codegen.py pysearpc/pygencode.py

.include <bsd.port.mk>
