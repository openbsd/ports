# $OpenBSD: Makefile,v 1.13 2013/08/09 05:41:50 dcoppa Exp $

COMMENT=		RCS parsing library for Python

CHANGESET=		75d93404707d
# we just make up a version since changesets are SHA1 hashes
VERSION=		20090807
DISTNAME=		${CHANGESET}
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		rcsparse-${VERSION}
REVISION=		1
CATEGORIES=     	devel

PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		http://ww2.fs.ei.tum.de/~corecode/hg/rcsparse
MASTER_SITES=		http://ww2.fs.ei.tum.de/~corecode/hg/rcsparse/archive/
WRKDIST=		${WRKDIR}/rcsparse-${CHANGESET}

USE_GMAKE=		Yes
MODULES=		lang/python
NO_TEST=		Yes

WANTLIB +=		${MODPY_WANTLIB}

.include <bsd.port.mk>
