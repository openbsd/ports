# $OpenBSD: Makefile,v 1.1.1.1 2008/12/25 10:39:12 mglocker Exp $

COMMENT=		Firmware binary images for acx driver

DISTNAME=		acx-firmware-1.4
CATEGORIES=		sysutils
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.nazgul.ch/acx/

MAINTAINER=		Marcus Glocker <mglocker@openbsd.org>

# Proprietary
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/etc

FIRMWARE=		-info 100 100r0D 100r11 111 111c16 111r16

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/tiacx$i ${PREFIX}/firmware/tiacx$i
.endfor

.include <bsd.port.mk>
