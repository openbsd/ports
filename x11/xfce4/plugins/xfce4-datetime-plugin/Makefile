# $OpenBSD: Makefile,v 1.2 2004/02/10 04:29:56 jolan Exp $

COMMENT=	"shows the date and time in the xfce4 panel"
DISTNAME=	xfce4-datetime-plugin-0.3.0
MASTER_SITES=	${MASTER_SITE_GOODIES}

HOMEPAGE=	${HOMEPAGE_GOODIES}

MODULES=	gettext

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${GUI}

post-install:
	@cd ${PREFIX}/lib/xfce4/panel-plugins && mv libdatetime.so.0.0 \
		libdatetime.so

.include <bsd.port.mk>
