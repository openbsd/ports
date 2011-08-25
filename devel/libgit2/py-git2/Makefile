# $OpenBSD: Makefile,v 1.2 2011/08/25 07:12:08 jasper Exp $

COMMENT=		libgit2 bindings in Python

V=			0.14.0
DISTNAME=		libgit2-pygit2-v${V}-0-g1c9602e
PKGNAME=		py-git2-$V

EXTRACT_SUFX=		.zip

MODULES=		lang/python

WANTLIB += 		crypto git2 z ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=${V}

WRKDIST= 		${WRKDIR}/libgit2-pygit2-1c9602e/

NO_REGRESS=		Yes

.include <bsd.port.mk>
