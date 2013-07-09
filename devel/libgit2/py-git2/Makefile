# $OpenBSD: Makefile,v 1.9 2013/07/09 10:04:15 jasper Exp $

COMMENT=		libgit2 bindings in Python

# git clone of 534d98b6b2398d053003b3a626fde666acf4417c
V=			0.18.1.1
PROJECT=		pygit2
PKGNAME=		py-git2-$V

# XXX: Remove when there's a real release supporting libgit 0.19.0
MASTER_SITES=		http://distfiles.nl/
###

MODULES=		lang/python

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.18.0

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
