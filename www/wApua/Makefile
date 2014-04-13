# $OpenBSD: Makefile,v 1.10 2014/04/13 01:01:39 naddy Exp $

COMMENT=		browser for wap/wml

DISTNAME=		wApua-0.06
REVISION=		1
CATEGORIES=		www

HOMEPAGE=		http://fsinfo.noone.org/~abe/wApua/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	perl

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-libwww \
			www/p5-HTML-Parser \
			www/p5-URI \
			x11/p5-Tk

NO_TEST=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
