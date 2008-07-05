# $OpenBSD: Makefile,v 1.15 2008/07/05 08:36:47 ajacoutot Exp $

COMMENT=	Weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.7
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
