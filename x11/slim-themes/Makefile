# $OpenBSD: Makefile,v 1.4 2010/07/30 06:59:00 ajacoutot Exp $

COMMENT=	slim themes bundle

.for j in 1.2.3-themepack1a zenwalk wave subway scotland-road \
	rear-window rainbow lake previous flat fingerprint sepp0
DISTFILES+=	slim-${j}-20090407${EXTRACT_SUFX}
.endfor

DIST_SUBDIR=	slim
PKGNAME=	slim-themes-1.2.3
REVISION=	2

PKG_ARCH=	*

CATEGORIES=	x11
HOMEPAGE=	http://slim.berlios.de/

MAINTAINER=	Landry Breuil <gaston@gcu.info>
MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/slim/

# Freely available themes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
NO_REGRESS=	Yes
NO_BUILD=	Yes
EXTRACT_ONLY=

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/slim/themes
.for i in ${DISTFILES}
	@tar xzf ${FULLDISTDIR}/${i}${EXTRACT_SUFX} \
		-C ${PREFIX}/share/slim/themes
.endfor

.include <bsd.port.mk>
