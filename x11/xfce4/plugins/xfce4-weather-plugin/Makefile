# $OpenBSD: Makefile,v 1.2 2004/04/18 00:28:58 jolan Exp $
ONLY_FOR_ARCHS=	i386

COMMENT=	"xfce4 plugin showing the temperature/weather conditions"
DISTNAME=	xfce4-weather-plugin-0.3.0
MASTER_SITES=	${MASTER_SITE_GOODIES}

HOMEPAGE=	${HOMEPAGE_GOODIES}

MODULES=	gettext

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${GUI}

post-install:
	@cd ${PREFIX}/lib/xfce4/panel-plugins && mv libweather.so.0.0 \
		libweather.so

.include <bsd.port.mk>
