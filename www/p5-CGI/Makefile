# $OpenBSD: Makefile,v 1.20 2021/12/26 22:59:59 afresh1 Exp $

COMMENT =	Handle Common Gateway Interface requests and responses
DISTNAME =	CGI-4.53
CATEGORIES =	www

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	www/p5-HTML-Parser>=3.69

TEST_DEPENDS =	devel/p5-Test-Deep>=0.11 \
		devel/p5-Test-NoWarnings \
		devel/p5-Test-Warn>=0.3

.include <bsd.port.mk>
