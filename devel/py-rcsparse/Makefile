# $OpenBSD: Makefile,v 1.10 2011/09/19 08:27:22 jasper Exp $

COMMENT=		RCS parsing library for Python

CHANGESET=		75d93404707d
# we just make up a version since changesets are SHA1 hashes
VERSION=		20090807
DISTNAME=		${CHANGESET}
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		rcsparse-${VERSION}
CATEGORIES=     	devel

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://ww2.fs.ei.tum.de/~corecode/hg/rcsparse
MASTER_SITES=		http://ww2.fs.ei.tum.de/~corecode/hg/rcsparse/archive/
WRKDIST=		${WRKDIR}/rcsparse-${CHANGESET}

USE_GMAKE=		Yes
MODULES=		lang/python
NO_REGRESS=		Yes

WANTLIB +=		${MODPY_WANTLIB}

.include <bsd.port.mk>
