# $OpenBSD: Makefile,v 1.9 2019/05/08 15:44:46 danj Exp $

COMMENT=	HTML cleaning module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Scrubber-0.09
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-Parser

.include <bsd.port.mk>
