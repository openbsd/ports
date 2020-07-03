# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:57 sthen Exp $

COMMENT =	flexible caching support for Catalyst

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Cache-0.10
CATEGORIES =	www
REVISION =	1

# Perl/MIT
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =		devel/p5-Test-Weaken
RUN_DEPENDS =		devel/p5-MRO-Compat \
			www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-Test-Exception \
			devel/p5-Test-Deep

.include <bsd.port.mk>
