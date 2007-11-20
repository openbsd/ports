# $OpenBSD: Makefile,v 1.3 2007/11/20 20:29:41 jasper Exp $

COMMENT=		browser for wap/wml

DISTNAME=		wApua-0.06
PKGNAME=		${DISTNAME}p0
CATEGORIES=		www

HOMEPAGE=		http://fsinfo.noone.org/~abe/wApua/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	perl

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::www/p5-libwww \
			::www/p5-HTML-Parser \
			::www/p5-URI \
			::x11/p5-Tk

NO_REGRESS=		Yes
USE_X11=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
