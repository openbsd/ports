# $OpenBSD: Makefile,v 1.1.1.2 2002/10/16 21:45:43 pvalchev Exp $

COMMENT=		"xvkbd - virtual keyboard for X window system"
VERSION=		2.4
DISTNAME=		xvkbd-$(VERSION)
CATEGORIES=		x11
HOMEPAGE=		http://member.nifty.ne.jp/tsato/xvkbd/

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

.include <bsd.port.mk>
