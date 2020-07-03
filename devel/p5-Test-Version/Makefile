# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:16 sthen Exp $

COMMENT =	check to see that version's in modules are sane

DISTNAME =	Test-Version-2.09
REVISION =	0

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-File-Find-Rule-Perl
TEST_DEPENDS =		devel/p5-Test-Exception

PKG_ARCH =		*

.include <bsd.port.mk>
