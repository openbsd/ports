# $OpenBSD: Makefile,v 1.9 2013/07/09 10:03:47 jasper Exp $

COMMENT=		the Git library, take 2

V=			0.19.0
PROJECT=		libgit2
SHARED_LIBS +=  git2                      4.0 # 0.19

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

LIB_DEPENDS=		security/libssh2

WANTLIB+= crypto ssl ssh2 z

.include <bsd.port.mk>
