# $OpenBSD: Makefile,v 1.4 2012/08/12 17:19:47 jasper Exp $

COMMENT=		the Git library, take 2

DISTNAME=		libgit2-0.17.0
SHARED_LIBS +=  git2                      2.0 # 0.17

MODULES=		devel/cmake

MASTER_SITES=		https://github.com/downloads/libgit2/libgit2/

WANTLIB+= z

NO_REGRESS=		Yes

.include <bsd.port.mk>
