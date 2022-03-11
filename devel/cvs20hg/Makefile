COMMENT=		fast, incremental CVS to Mercurial conversion

# we just make up a version since changesets are SHA1 hashes
CHANGESET=		075ee8bd5b35
VERSION=		20060714

DISTNAME=		cvs20hg-${CHANGESET}
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		cvs20hg-${VERSION}
REVISION =		5
CATEGORIES=     	devel

PERMIT_PACKAGE=	Yes

HOMEPAGE=		http://ww2.fs.ei.tum.de/~corecode/hg/cvs20hg
MASTER_SITES=		http://hg.recoil.org/dist/
WRKDIST=		${WRKDIR}/-corecode-hg-cvs20hg-${CHANGESET}

USE_GMAKE=		Yes
MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
BUILD_DEPENDS +=	devel/py-rcsparse
RUN_DEPENDS +=		devel/py-rcsparse
NO_TEST=		Yes

.include <bsd.port.mk>
