# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:10 espie Exp $

COMMENT=		the Git library, take 2

DISTNAME=		libgit2-0.17.0
SHARED_LIBS +=  git2                      2.0 # 0.17

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

MASTER_SITES=		https://github.com/downloads/libgit2/libgit2/

WANTLIB+= z

NO_TEST=		Yes

.include <bsd.port.mk>
