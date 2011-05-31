# $OpenBSD: Makefile,v 1.7 2011/05/31 05:44:27 rpointel Exp $

COMMENT=		RCS parsing library for Python

CHANGESET=		40d822c6febd
# we just make up a version since changesets are SHA1 hashes
VERSION=		20060714
DISTNAME=		rcsparse-${CHANGESET}
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		rcsparse-${VERSION}
REVISION =		4
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

WANTLIB +=		${MODPY_WANTLIB}

.include <bsd.port.mk>
