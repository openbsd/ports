# $OpenBSD: Makefile,v 1.7 2013/04/22 06:22:21 jasper Exp $

COMMENT=		the Git library, take 2

V=			0.18.0
DISTNAME=		libgit2-$V
SHARED_LIBS +=  git2                      3.0 # 0.18

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

MASTER_SITES=		http://github.com/libgit2/libgit2/archive/v${V}.tar.gz?dummy=/

WANTLIB+= crypto ssl z

.include <bsd.port.mk>
