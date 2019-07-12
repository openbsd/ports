# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:58 sthen Exp $

COMMENT=		interface to goo.gl shortening site

DISTNAME = 		WWW-Shorten-Googl-1.100
CATEGORIES=		www

# Perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-JSON-Any \
			www/p5-LWP-Protocol-https \
			www/p5-WWW-Shorten \
			converters/p5-JSON-MaybeXS

.include <bsd.port.mk>
