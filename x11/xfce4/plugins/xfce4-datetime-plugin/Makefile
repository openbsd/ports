# $OpenBSD: Makefile,v 1.3 2004/08/10 11:06:43 xsa Exp $

COMMENT=	"shows the date and time in the xfce4 panel"
DISTNAME=	xfce4-datetime-plugin-0.3.0
MASTER_SITES=	${MASTER_SITE_GOODIES}

HOMEPAGE=	${HOMEPAGE_GOODIES}

MODULES=	devel/gettext

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${GUI}

post-install:
	@cd ${PREFIX}/lib/xfce4/panel-plugins && mv libdatetime.so.0.0 \
		libdatetime.so

.include <bsd.port.mk>
