# $OpenBSD: Makefile,v 1.4 2007/01/12 08:53:03 steven Exp $

NOT_FOR_ARCHS=		sparc m68k m88k vax

COMMENT=		"PCI bus configuration register access tools"

DISTNAME=		pciutils-2.2.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils

HOMEPAGE=		http://atrey.karlin.mff.cuni.cz/~mj/pciutils.shtml

MAINTAINER=		Matthieu Herrb <matthieu@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=		ftp://atrey.karlin.mff.cuni.cz/pub/linux/pci/

USE_GMAKE=		Yes

MAKE_ENV=		CC="${CC}"
FAKE_FLAGS=		PREFIX=${PREFIX}

NO_REGRESS=		Yes

.include <bsd.port.mk>
