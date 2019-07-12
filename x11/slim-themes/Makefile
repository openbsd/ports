# $OpenBSD: Makefile,v 1.14 2019/07/12 20:51:21 sthen Exp $

COMMENT=	slim themes bundle

.for j in 1.2.3-themepack1a zenwalk wave subway scotland-road \
	rear-window rainbow lake previous flat fingerprint openbsd-simple
DISTFILES+=	slim-${j}-20090407${EXTRACT_SUFX}
.endfor

DIST_SUBDIR=	slim
PKGNAME=	slim-themes-1.2.3
REVISION=	7

PKG_ARCH=	*

CATEGORIES=	x11
HOMEPAGE=	http://slim.berlios.de/

MASTER_SITES=	https://distfiles.bsdfrog.org/slim/

# Freely available themes
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes
NO_BUILD=	Yes
EXTRACT_ONLY=

RUN_DEPENDS=	x11/slim

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/slim/themes
.for i in ${DISTFILES}
	@tar xzf ${FULLDISTDIR}/${i}${EXTRACT_SUFX} \
		-C ${PREFIX}/share/slim/themes
.endfor
	chmod 644 ${PREFIX}/share/slim/themes/fingerprint/screenshot.png

.include <bsd.port.mk>
