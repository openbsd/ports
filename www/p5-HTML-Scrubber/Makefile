# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:54 sthen Exp $

COMMENT=	HTML cleaning module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Scrubber-0.09
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-Parser

.include <bsd.port.mk>
