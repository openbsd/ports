# $OpenBSD: Makefile,v 1.3 1999/09/18 21:19:01 rohee Exp $
#
DISTNAME=		vrfy_990522
PKGNAME=		vrfy-99.05.22
CATEGORIES=		mail

MAINTAINER=		rohee@OpenBSD.ORG

# how to fetch the tarball
MASTER_SITES=		ftp://ftp.nikhef.nl/pub/network/
EXTRACT_SUFX=		.tar.Z

# the archive doesn't create its own subdirectory
WRKSRC=			${WRKDIR}/

# installing, the supplied install script doesn't install the man
INSTALL_TARGET=		install man

.include <bsd.port.mk>
