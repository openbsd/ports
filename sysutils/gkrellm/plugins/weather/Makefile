# $OpenBSD: Makefile,v 1.22 2011/07/07 00:08:35 ajacoutot Exp $

COMMENT=	weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.8
REVISION=	3
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
