# $OpenBSD: Makefile,v 1.2 1999/02/27 15:59:36 rohee Exp $
#
DISTNAME=		vrfy_980820
PKGNAME=		vrfy-98.08.20
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
