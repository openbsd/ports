# $OpenBSD: Makefile,v 1.1.1.1 2004/04/08 01:56:44 jolan Exp $

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
