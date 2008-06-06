# $OpenBSD: Makefile,v 1.14 2008/06/06 10:27:55 sthen Exp $

COMMENT=	Weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.6
PKGNAME=	${DISTNAME}p9
CATEGORIES=	x11
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
