# $OpenBSD: Makefile,v 1.26 2016/03/21 15:24:20 jasper Exp $

BROKEN-arm =		no atomic ops
BROKEN-hppa =		no atomic ops
COMMENT=		the Git library, take 2

GH_VER=			v0.24.0
V=			${GH_VER:S/v//}
PROJECT=		libgit2
SHARED_LIBS +=  git2                      8.0 # 0.24

MASTER_SITES=		https://github.com/libgit2/${PROJECT}/archive/
DISTFILES=		${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}

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
