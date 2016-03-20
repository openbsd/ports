# $OpenBSD: Makefile,v 1.14 2016/03/20 19:57:13 naddy Exp $

COMMENT =	handle Common Gateway Interface requests and responses
DISTNAME =	CGI-4.21
CATEGORIES =	www

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	www/p5-HTML-Parser>=3.69

# Addtional unlisted dependencies to fix test
TEST_DEPENDS +=	devel/p5-Test-Deep \
		devel/p5-Test-Warn

.include <bsd.port.mk>
