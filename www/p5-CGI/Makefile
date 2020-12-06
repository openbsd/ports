# $OpenBSD: Makefile,v 1.19 2020/12/06 03:37:37 afresh1 Exp $

COMMENT =	Handle Common Gateway Interface requests and responses
DISTNAME =	CGI-4.51
CATEGORIES =	www

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	www/p5-HTML-Parser>=3.69

TEST_DEPENDS =	devel/p5-Test-Deep>=0.11 \
		devel/p5-Test-NoWarnings \
		devel/p5-Test-Warn>=0.3

.include <bsd.port.mk>
