# $OpenBSD: Makefile,v 1.2 2004/01/09 01:27:43 jolan Exp $

COMMENT=	"icon themes for the xfce4 panel"
DISTNAME=	xfce4-themes-${V}

RUN_DEPENDS=	:xfce4-panel-*:x11/xfce4/desktop/xfce4-panel
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
