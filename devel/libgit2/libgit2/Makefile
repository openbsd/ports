# $OpenBSD: Makefile,v 1.5 2012/08/29 20:20:43 jasper Exp $

COMMENT=		the Git library, take 2

DISTNAME=		libgit2-0.17.0
SHARED_LIBS +=  git2                      2.0 # 0.17

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

MASTER_SITES=		https://github.com/downloads/libgit2/libgit2/

WANTLIB+= z

NO_REGRESS=		Yes

.include <bsd.port.mk>
