# $OpenBSD: Makefile,v 1.1.1.1 2007/10/25 09:32:07 landry Exp $

COMMENT=	slim themes bundle

V=		1.2.3
DISTNAME=	slim-${V}-themepack1a

PKGNAME=	slim-themes-${V}p0
PKG_ARCH=	*

CATEGORIES=	x11
HOMEPAGE=	http://slim.berlios.de/

MAINTAINER=	Landry Breuil <gaston@gcu.info>
MASTER_SITES=	${MASTER_SITE_BERLIOS:=slim/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
NO_REGRESS=	Yes
NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/slim/themes
	@tar xzf ${FULLDISTDIR}/slim-${V}-themepack1a${EXTRACT_SUFX} \
		-C ${PREFIX}/share/slim/themes

.include <bsd.port.mk>
