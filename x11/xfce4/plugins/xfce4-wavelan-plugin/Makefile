# $OpenBSD: Makefile,v 1.3 2004/01/08 23:09:12 jolan Exp $

COMMENT=	"displays stats from a WLAN interface"
DISTNAME=	xfce4-wavelan-plugin-0.1.0
MASTER_SITES=	${MASTER_SITE_GOODIES}

HOMEPAGE=	${HOMEPAGE_GOODIES}

MODULES=	gettext

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${GUI}

post-install:
	@cd ${PREFIX}/lib/xfce4/panel-plugins && mv libwavelan.so.0.0 \
		libwavelan.so

.include <bsd.port.mk>
