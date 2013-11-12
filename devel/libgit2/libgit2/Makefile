# $OpenBSD: Makefile,v 1.11 2013/11/12 15:00:25 sthen Exp $

COMMENT=		the Git library, take 2

GH_VER=			v0.19.0
V=			${GH_VER:S/v//}
PROJECT=		libgit2
REVISION=		0
SHARED_LIBS +=  git2                      4.0 # 0.19

MASTER_SITES=		https://github.com/libgit2/${PROJECT}/archive/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

LIB_DEPENDS=		security/libssh2

WANTLIB+= crypto ssl ssh2 z

.include <bsd.port.mk>
