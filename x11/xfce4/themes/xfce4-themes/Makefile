# $OpenBSD: Makefile,v 1.3 2004/04/18 00:28:58 jolan Exp $
PKG_ARCH=	*

COMMENT=	"icon themes for the xfce4 panel"
DISTNAME=	xfce4-themes-${V}

RUN_DEPENDS=	:xfce4-panel-*:x11/xfce4/desktop/xfce4-panel
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
