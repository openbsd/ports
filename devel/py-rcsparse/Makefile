# $OpenBSD: Makefile,v 1.5 2009/10/11 20:59:37 jasper Exp $

COMMENT=		RCS parsing library for Python

CHANGESET=		40d822c6febd
# we just make up a version since changesets are SHA1 hashes
VERSION=		20060714
DISTNAME=		rcsparse-${CHANGESET}
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		rcsparse-${VERSION}p2
CATEGORIES=     	devel

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://ww2.fs.ei.tum.de/~corecode/hg/rcsparse
MASTER_SITES=		http://hg.recoil.org/dist/
WRKDIST=		${WRKDIR}/-corecode-hg-rcsparse-${CHANGESET}

USE_GMAKE=		Yes
MODULES=		lang/python
NO_REGRESS=		Yes

.include <bsd.port.mk>
