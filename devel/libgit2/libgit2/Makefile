COMMENT=		Git linkable library

GH_ACCOUNT=		libgit2
GH_PROJECT=		libgit2
GH_TAGNAME=		v1.8.0

SHARED_LIBS +=  git2                      15.0 # 0.28

WANTLIB += c crypto http_parser pcre pthread ssh2 ssl z

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c
# for atomic builtins
MODGCC4_ARCHS=		hppa

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		devel/http-parser \
			devel/pcre \
			security/libssh2

CONFIGURE_ARGS=		-DUSE_SSH=ON \
			-DUSE_HTTP_PARSER=system

CFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
