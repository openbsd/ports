# $OpenBSD: Makefile,v 1.6 2004/12/16 22:05:10 alek Exp $

COMMENT=	"tips/fortune dialog, xeyes for the xfce4 panel"
DISTNAME=	xfce4-toys-${V}

MASTER_SITES=	${MASTER_SITE_EXTRAS}

HOMEPAGE=	${HOMEPAGE_EXTRAS}

MODULES=	devel/gettext

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${GUI}

USE_LIBTOOL=	yes

WANTLIB=	ICE SM c pangoft2-1.0.0.0

.include <bsd.port.mk>
