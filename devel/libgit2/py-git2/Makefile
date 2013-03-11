# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:10 espie Exp $

COMMENT=		libgit2 bindings in Python

V=			0.17.1
DISTNAME=		libgit2-pygit2-v${V}-0-ga1716a3
PKGNAME=		py-git2-$V

MODULES=		lang/python

WANTLIB += 		crypto git2 z ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.17.0

WRKDIST= 		${WRKDIR}/libgit2-pygit2-a1716a3/

NO_TEST=		Yes

.include <bsd.port.mk>
