# $OpenBSD: Makefile,v 1.3 2004/06/24 02:52:43 naddy Exp $

COMMENT=		"xvkbd - virtual keyboard for X window system"

DISTNAME=		xvkbd-2.6
CATEGORIES=		x11
HOMEPAGE=		http://homepage3.nifty.com/tsato/xvkbd/

MAINTAINER=		Yozo TODA <yozo@v007.vaio.ne.jp>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		Xaw3d.6::x11/Xaw3d

USE_X11=		Yes
CONFIGURE_STYLE=	imake
NO_REGRESS=		Yes

.include <bsd.port.mk>
