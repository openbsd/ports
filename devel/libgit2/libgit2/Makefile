# $OpenBSD: Makefile,v 1.23 2015/12/26 09:45:51 ajacoutot Exp $

BROKEN-hppa =		no atomic ops
COMMENT=		the Git library, take 2

GH_VER=			v0.23.3
V=			${GH_VER:S/v//}
PROJECT=		libgit2
SHARED_LIBS +=  git2                      7.0 # 0.21

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
