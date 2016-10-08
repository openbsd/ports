# $OpenBSD: Makefile,v 1.27 2016/10/08 12:49:19 czarkoff Exp $

BROKEN-arm =		no atomic ops
BROKEN-hppa =		no atomic ops
COMMENT=		the Git library, take 2

GH_ACCOUNT =		libgit2
GH_PROJECT =		libgit2
GH_TAGNAME =		v0.24.1
SHARED_LIBS +=  git2                      8.0 # 0.24

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

LIB_DEPENDS=		net/curl \
			security/libssh2

WANTLIB += crypto curl pthread ssh2 ssl z

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="-I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
			-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
