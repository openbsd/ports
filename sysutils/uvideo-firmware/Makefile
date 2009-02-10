# $OpenBSD: Makefile,v 1.3 2009/02/10 15:11:30 mglocker Exp $

COMMENT=		firmware binary images for uvideo driver

DISTNAME=		uvideo-firmware-1.1
CATEGORIES=		sysutils
MASTER_SITES=		${HOMEPAGE}	

HOMEPAGE=		http://www.nazgul.ch/uvideo/

MAINTAINER=		Marcus Glocker <mglocker@openbsd.org>

# Proprietary
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

NO_REGRESS=		Yes
PKG_ARCH=		*

PREFIX=			/etc

# Apple iSight first generation
FIRMWARE=	isight_05ac-8300

# Ricoh R5U87x
FIRMWARE+=	r5u87x_05ca-1803 r5u87x_05ca-1810 r5u87x_05ca-1812 \
		r5u87x_05ca-1835 r5u87x_05ca-1836 r5u87x_05ca-1837 \
		r5u87x_05ca-1839 r5u87x_05ca-183a r5u87x_05ca-183b \
		r5u87x_05ca-183e r5u87x_05ca-1841

do-install:
.for i in ${FIRMWARE}
	${INSTALL_DATA} ${WRKSRC}/uvideo_$i ${PREFIX}/firmware/uvideo_$i
.endfor

.include <bsd.port.mk>
