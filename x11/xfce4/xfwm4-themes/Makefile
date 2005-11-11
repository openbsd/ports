# $OpenBSD: Makefile,v 1.4 2005/11/11 04:30:05 jolan Exp $
PKG_ARCH=	*

COMMENT=	"window decoration themes for xfwm4"
V=		4.2.3
DISTNAME=	xfwm4-themes-${V}
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	No

RUN_DEPENDS=	:xfwm4-*:x11/xfce4/xfwm4

.include <bsd.port.mk>
