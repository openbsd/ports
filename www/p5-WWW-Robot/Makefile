# $OpenBSD: Makefile,v 1.7 2011/03/18 09:27:22 jasper Exp $

COMMENT=		configurable web traversal engine

DISTNAME=		WWW-Robot-0.026
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-HTML-Parser \
			www/p5-HTML-Tree \
			www/p5-URI \
			www/p5-libwww 

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
