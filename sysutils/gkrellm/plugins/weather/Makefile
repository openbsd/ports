# $OpenBSD: Makefile,v 1.11 2007/09/23 12:57:08 sturm Exp $

COMMENT=	Weather plugin for GkrellM2

DISTNAME=	gkrellweather-2.0.6
PKGNAME=	${DISTNAME}p6
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
