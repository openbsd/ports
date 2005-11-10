# $OpenBSD: Makefile,v 1.3 2005/11/10 22:57:39 jolan Exp $
PKG_ARCH=	*

COMMENT=	"icon theme for xfce4"
V=		4.2.3
DISTNAME=	xfce4-icon-theme-${V}
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:xfce4-panel-*:x11/xfce4/xfce4-panel

.include <bsd.port.mk>
