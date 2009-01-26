# $OpenBSD: Makefile,v 1.3 2009/01/26 10:37:46 ajacoutot Exp $

COMMENT=		firmware binary images for malo driver

DISTNAME=		malo-firmware-1.4
PKGNAME=		${DISTNAME}p0
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
