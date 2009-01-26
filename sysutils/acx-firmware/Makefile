# $OpenBSD: Makefile,v 1.2 2009/01/26 10:37:46 ajacoutot Exp $

COMMENT=		firmware binary images for acx driver

DISTNAME=		acx-firmware-1.4
PKGNAME=		${DISTNAME}p0
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
