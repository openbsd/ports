# $OpenBSD: Makefile,v 1.1.1.1 1998/11/21 23:05:43 marc Exp $
#
DISTNAME=		vrfy_980820
PKGNAME=		vrfy-98.08.20
CATEGORIES=		mail

MAINTAINER=		br@spooky.net

# how to fetch the tarball
MASTER_SITES=		ftp://ftp.nikhef.nl/pub/network/
EXTRACT_SUFX=		.tar.Z

# the archive doesn't create its own subdirectory
WRKSRC=			${WRKDIR}/

# installing, the supplied install script doesn't install the man
INSTALL_TARGET=		install man

.include <bsd.port.mk>
