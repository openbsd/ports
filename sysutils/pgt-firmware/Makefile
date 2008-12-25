# $OpenBSD: Makefile,v 1.2 2008/12/25 19:17:18 mglocker Exp $

COMMENT=		Firmware binary images for pgt driver

DISTNAME=		pgt-firmware-1.2
CATEGORIES=		sysutils
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.nazgul.ch/pgt/

MAINTAINER=		Marcus Glocker <mglocker@openbsd.org>

# Proprietary
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/etc

FIRMWARE=		info isl3877 isl3890

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/pgt-$i ${PREFIX}/firmware/pgt-$i
.endfor

.include <bsd.port.mk>
