# $OpenBSD: Makefile,v 1.10 2007/09/15 21:14:01 merdely Exp $

COMMENT=	Weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.6
PKGNAME=	${DISTNAME}p5
CATEGORIES=	x11 sysutils/gkrellm
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://kmlinux.fjfi.cvut.cz/~makovick/gkrellm/index.html
MASTER_SITES=	http://kmlinux.fjfi.cvut.cz/~makovick/gkrellm/

ALL_TARGET=	gkrellweather.so
PLUGIN=		${WRKSRC}/gkrellweather.so

pre-configure:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" ${WRKSRC}/gkrellweather.c

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GrabWeather \
		${PREFIX}/bin/gkrellm.GrabWeather

.include <bsd.port.mk>
