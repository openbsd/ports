# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:18 naddy Exp $

COMMENT=	HTML cleaning module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Scrubber-0.09
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-Parser

.include <bsd.port.mk>
