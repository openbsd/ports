# $OpenBSD: Makefile,v 1.7 2013/03/09 15:30:50 sthen Exp $

COMMENT=	HTML cleaning module

MODULES=	cpan
DISTNAME=	HTML-Scrubber-0.09
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-Parser

.include <bsd.port.mk>
