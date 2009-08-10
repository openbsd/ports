# $OpenBSD: Makefile,v 1.17 2009/08/10 06:34:30 kili Exp $

COMMENT=	Weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.7
PKGNAME=	${DISTNAME}p1
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
