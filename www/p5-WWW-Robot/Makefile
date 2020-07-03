# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:07 sthen Exp $

COMMENT=		configurable web traversal engine

DISTNAME=		WWW-Robot-0.026
CATEGORIES=		www
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-HTML-Parser \
			www/p5-HTML-Tree \
			www/p5-URI \
			www/p5-libwww 

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
