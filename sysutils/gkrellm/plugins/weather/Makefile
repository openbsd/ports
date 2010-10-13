# $OpenBSD: Makefile,v 1.21 2010/10/13 19:12:34 jasper Exp $

COMMENT=	weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.8
REVISION=	2
CATEGORIES=	x11
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://sites.google.com/site/makovick/gkrellm-plugins
MASTER_SITES=	http://sites.google.com/site/makovick/projects/

ALL_TARGET=	gkrellweather.so
PLUGIN=		${WRKSRC}/gkrellweather.so

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GrabWeather \
		${PREFIX}/bin/gkrellm.GrabWeather

.include <bsd.port.mk>
