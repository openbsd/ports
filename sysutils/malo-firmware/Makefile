# $OpenBSD: Makefile,v 1.2 2008/12/25 19:17:18 mglocker Exp $

COMMENT=		Firmware binary images for malo driver

DISTNAME=		malo-firmware-1.4
CATEGORIES=		sysutils
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.nazgul.ch/malo/

MAINTAINER=		Marcus Glocker <mglocker@openbsd.org>

# Proprietary
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/etc

FIRMWARE=		-info 8335-h 8335-m 8338 8385-h 8385-m

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/malo$i ${PREFIX}/firmware/malo$i
.endfor

.include <bsd.port.mk>
