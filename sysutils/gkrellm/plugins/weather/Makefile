# $OpenBSD: Makefile,v 1.1.1.1 2003/11/03 20:34:18 sturm Exp $

COMMENT=	"Weather plugin for GkrellM2"

DISTNAME=	gkrellweather-2.0.6
CATEGORIES=	x11 sysutils/gkrellm
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://kmlinux.fjfi.cvut.cz/~makovick/gkrellm/index.html
MASTER_SITES=	http://kmlinux.fjfi.cvut.cz/~makovick/gkrellm/

RUN_DEPENDS+=	:wget-*:net/wget

ALL_TARGET=	gkrellweather.so
PLUGIN=		${WRKSRC}/gkrellweather.so

post-patch:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" ${WRKSRC}/gkrellweather.c

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GrabWeather \
		${PREFIX}/bin/gkrellm.GrabWeather

.include <bsd.port.mk>
