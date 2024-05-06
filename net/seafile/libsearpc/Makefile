COMMENT =		simple RPC framework based on GObject system

GH_PROJECT =		libsearpc
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v3.3-latest" tag
GH_COMMIT =		15f6f0b9f451b9ecf99dedab72e9242e54e124eb
DISTNAME =		libsearpc-3.3.0pl20221111
REVISION =		1

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
