# $OpenBSD: Makefile,v 1.1.1.1 2011/06/30 12:07:02 jasper Exp $

COMMENT=		the Git library, take 2

DISTNAME=		libgit2-0.12.0
SHARED_LIBS +=  git2                      0.0 # 0.12

MODULES=		devel/cmake

do-regress:
	cd ${WRKSRC} && ./libgit2_test

.include <bsd.port.mk>
