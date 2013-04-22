# $OpenBSD: Makefile,v 1.6 2013/04/22 06:23:24 jasper Exp $

COMMENT=		libgit2 bindings in Python

V=			0.18.1
DISTNAME=		pygit2-$V
PKGNAME=		py-git2-$V

MASTER_SITES=		http://github.com/libgit2/pygit2/archive/v${V}.tar.gz?dummy=/

MODULES=		lang/python

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.18.0

NO_TEST=		Yes

.include <bsd.port.mk>
