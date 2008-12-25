# $OpenBSD: Makefile,v 1.2 2008/12/25 19:17:18 mglocker Exp $

COMMENT=		Firmware binary images for upgt driver

DISTNAME=		upgt-firmware-1.1
CATEGORIES=		sysutils
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.nazgul.ch/upgt/

MAINTAINER=		Marcus Glocker <mglocker@openbsd.org>

# Proprietary
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/etc

FIRMWARE=		gw3887 info

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/upgt-$i ${PREFIX}/firmware/upgt-$i
.endfor

.include <bsd.port.mk>
