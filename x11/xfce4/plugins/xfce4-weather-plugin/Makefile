# $OpenBSD: Makefile,v 1.3 2004/07/12 04:54:01 jolan Exp $

COMMENT=	"xfce4 plugin showing the temperature/weather conditions"
DISTNAME=	xfce4-weather-plugin-0.3.9.1
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	${MASTER_SITE_GOODIES}

HOMEPAGE=	${HOMEPAGE_GOODIES}

MODULES=	gettext

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${GUI}

USE_LIBTOOL=	yes

.include <bsd.port.mk>
