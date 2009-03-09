# $OpenBSD: Makefile,v 1.16 2009/03/09 22:42:08 sthen Exp $

COMMENT=	Weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://makovick.googlepages.com/gkrellmplugins
MASTER_SITES=	http://makovick.googlepages.com/

ALL_TARGET=	gkrellweather.so
PLUGIN=		${WRKSRC}/gkrellweather.so

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GrabWeather \
		${PREFIX}/bin/gkrellm.GrabWeather

.include <bsd.port.mk>
