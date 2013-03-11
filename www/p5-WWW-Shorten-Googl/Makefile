# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:47 espie Exp $

COMMENT=		interface to goo.gl shortening site

DISTNAME=		WWW-Shorten-Googl-1.02
CATEGORIES=		www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-JSON-Any \
			www/p5-WWW-Shorten

.include <bsd.port.mk>
