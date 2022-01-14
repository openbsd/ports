# $OpenBSD: Makefile,v 1.50 2022/01/14 10:35:37 tb Exp $

COMMENT=		the Git library, take 2

GH_ACCOUNT =		libgit2
GH_PROJECT =		libgit2
GH_TAGNAME =		v1.3.0
REVISION =		0

SHARED_LIBS +=  git2                      14.0 # 0.28

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c
# for atomic builtins
MODGCC4_ARCHS=		hppa

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		devel/pcre \
			security/libssh2

WANTLIB += crypto pcre pcreposix pthread ssh2 ssl z

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="-I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
			-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
