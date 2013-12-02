# $OpenBSD: Makefile,v 1.13 2013/12/02 16:25:08 espie Exp $

COMMENT=		the Git library, take 2

GH_VER=			v0.20.0
V=			${GH_VER:S/v//}
PROJECT=		libgit2
SHARED_LIBS +=  git2                      5.0 # 0.20

MASTER_SITES=		https://github.com/libgit2/${PROJECT}/archive/
DISTFILES=		${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

LIB_DEPENDS=		security/libssh2

WANTLIB+= crypto ssl ssh2 z

.include <bsd.port.mk>
