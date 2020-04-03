# $OpenBSD: Makefile,v 1.45 2020/04/03 10:23:29 kn Exp $

COMMENT=		the Git library, take 2

GH_ACCOUNT =		libgit2
GH_PROJECT =		libgit2
GH_TAGNAME =		v0.28.4

SHARED_LIBS +=  git2                      12.0 # 0.28

MODULES=		devel/cmake \
			lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c
# for atomic builtins
MODGCC4_ARCHS=		hppa

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		security/libssh2

WANTLIB += crypto pthread ssh2 ssl z

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="-I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
			-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
