# $OpenBSD: Makefile,v 1.3 2004/12/16 22:05:10 alek Exp $

COMMENT=	"display cpu/memory/swap/uptime in xfce4 panel"
DISTNAME=	xfce4-systemload-plugin-0.3.4
MASTER_SITES=	${MASTER_SITE_GOODIES}

HOMEPAGE=	${MASTER_SITE_GOODIES}

MODULES=	devel/gettext

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${GUI}

WANTLIB=	kvm

.include <bsd.port.mk>
