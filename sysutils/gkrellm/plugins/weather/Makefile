# $OpenBSD: Makefile,v 1.26 2017/09/15 15:37:18 naddy Exp $

COMMENT=	weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.8
REVISION=	7
CATEGORIES=	x11
EXTRACT_SUFX=	.tgz

HOMEPAGE=	https://sites.google.com/site/makovick/gkrellm-plugins
MASTER_SITES=	https://sites.google.com/site/makovick/projects/

ALL_TARGET=	gkrellweather.so
PLUGIN=		${WRKSRC}/gkrellweather.so

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GrabWeather \
		${PREFIX}/bin/gkrellm.GrabWeather

.include <bsd.port.mk>
