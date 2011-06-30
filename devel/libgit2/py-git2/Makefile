# $OpenBSD: Makefile,v 1.1.1.1 2011/06/30 12:07:32 jasper Exp $

COMMENT=		libgit2 bindings in Python

V=			0.12.0
DISTNAME=		libgit2-pygit2-v${V}-0-gf8e61de
PKGNAME=		py-git2-$V

EXTRACT_SUFX=		.zip

MODULES=		lang/python

WANTLIB += 		crypto git2 ${MODPY_WANTLIB} z

LIB_DEPENDS=		devel/libgit2/libgit2

WRKDIST= 		${WRKDIR}/libgit2-pygit2-f8e61de/

NO_REGRESS=		Yes

.include <bsd.port.mk>
