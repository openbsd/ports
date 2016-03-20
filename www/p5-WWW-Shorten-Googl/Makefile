# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:23 naddy Exp $

COMMENT=		interface to goo.gl shortening site

DISTNAME=		WWW-Shorten-Googl-1.02
REVISION=		0
CATEGORIES=		www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-JSON-Any \
			www/p5-LWP-Protocol-https \
			www/p5-WWW-Shorten

.include <bsd.port.mk>
