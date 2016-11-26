# $OpenBSD: Makefile,v 1.15 2016/11/26 17:36:39 afresh1 Exp $

COMMENT =	handle Common Gateway Interface requests and responses
DISTNAME =	CGI-4.35
CATEGORIES =	www

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	www/p5-HTML-Parser>=3.69

TEST_DEPENDS =	devel/p5-Test-Deep>=0.11 \
		devel/p5-Test-Warn>=0.3

.include <bsd.port.mk>
