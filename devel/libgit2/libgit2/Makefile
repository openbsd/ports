# $OpenBSD: Makefile,v 1.30 2017/07/23 10:08:27 ajacoutot Exp $

BROKEN-hppa =		no atomic ops
COMMENT=		the Git library, take 2

GH_ACCOUNT =		libgit2
GH_PROJECT =		libgit2
GH_TAGNAME =		v0.26.0

SHARED_LIBS +=  git2                      10.0 # 0.25

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

# for atomic builtins
COMPILER=		gcc
COMPILER_LANGS=		c
MODGCC4_ARCHS=		arm

# bundles https://github.com/nodejs/http-parser
LIB_DEPENDS=		net/curl \
			security/libssh2

WANTLIB += crypto curl pthread ssh2 ssl z

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="-I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
			-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
