# $OpenBSD: Makefile,v 1.7 2013/04/22 06:33:28 jasper Exp $

COMMENT=		libgit2 bindings in Python

V=			0.18.1
PROJECT=		pygit2
PKGNAME=		py-git2-$V

MODULES=		lang/python

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.18.0

NO_TEST=		Yes

.include <bsd.port.mk>
