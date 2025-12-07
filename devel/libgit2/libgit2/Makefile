COMMENT=		Git linkable library

GH_ACCOUNT=		libgit2
GH_PROJECT=		libgit2
GH_TAGNAME=		v1.9.2

SHARED_LIBS +=  git2                      16.1 # 0.28

WANTLIB += c crypto llhttp pcre2-8 pthread ssh2 ssl z

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c
# for atomic builtins
MODGCC4_ARCHS=		hppa

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		devel/pcre2 \
			security/libssh2 \
			www/llhttp

CONFIGURE_ARGS=		-DREGEX_BACKEND=pcre2 \
			-DUSE_HTTP_PARSER=llhttp \
			-DUSE_SSH=ON

CFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
