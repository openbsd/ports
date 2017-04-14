# $OpenBSD: Makefile,v 1.29 2017/04/14 18:26:40 jasper Exp $

BROKEN-hppa =		no atomic ops
COMMENT=		the Git library, take 2

GH_ACCOUNT =		libgit2
GH_PROJECT =		libgit2
GH_TAGNAME =		v0.25.1
SHARED_LIBS +=  git2                      9.0 # 0.25

MODULES=		devel/cmake \
			lang/python \
			gcc4

MODPY_RUNDEP=		No
# for atomic builtins
MODGCC4_ARCHS=		arm

LIB_DEPENDS=		net/curl \
			security/libssh2

WANTLIB += crypto curl pthread ssh2 ssl z

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="-I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
			-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
