# $OpenBSD: Makefile,v 1.4 2000/02/11 00:37:29 espie Exp $
#
DISTNAME=		vrfy_990522
PKGNAME=		vrfy-99.05.22
CATEGORIES=		mail

MAINTAINER=		rohee@OpenBSD.ORG

# how to fetch the tarball
MASTER_SITES=		ftp://ftp.nikhef.nl/pub/network/
EXTRACT_SUFX=		.tar.Z
NEED_VERSION=	1.191

# the archive doesn't create its own subdirectory
WRKDIST=			${WRKDIR}/

# installing, the supplied install script doesn't install the man
INSTALL_TARGET=		install man

.include <bsd.port.mk>
