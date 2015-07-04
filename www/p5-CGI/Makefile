# $OpenBSD: Makefile,v 1.13 2015/07/04 17:07:40 afresh1 Exp $

COMMENT =	handle Common Gateway Interface requests and responses
DISTNAME =	CGI-4.21
CATEGORIES =	www

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
RUN_DEPENDS =	www/p5-HTML-Parser>=3.69

# Addtional unlisted dependencies to fix test
TEST_DEPENDS +=	devel/p5-Test-Deep \
		devel/p5-Test-Warn

.include <bsd.port.mk>
