# $OpenBSD: Makefile,v 1.6 2006/01/22 00:09:30 steven Exp $

COMMENT=	"Weather plugin for GkrellM2"

DISTNAME=	gkrellweather-2.0.6
PKGNAME=	${DISTNAME}p3
CATEGORIES=	x11 sysutils/gkrellm
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://kmlinux.fjfi.cvut.cz/~makovick/gkrellm/index.html
MASTER_SITES=	http://kmlinux.fjfi.cvut.cz/~makovick/gkrellm/

ALL_TARGET=	gkrellweather.so
PLUGIN=		${WRKSRC}/gkrellweather.so

post-patch:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" ${WRKSRC}/gkrellweather.c

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GrabWeather \
		${PREFIX}/bin/gkrellm.GrabWeather

.include <bsd.port.mk>
