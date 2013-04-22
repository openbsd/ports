# $OpenBSD: Makefile,v 1.8 2013/04/22 06:33:28 jasper Exp $

COMMENT=		the Git library, take 2

V=			0.18.0
PROJECT=		libgit2
SHARED_LIBS +=  git2                      3.0 # 0.18

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

WANTLIB+= crypto ssl z

.include <bsd.port.mk>
