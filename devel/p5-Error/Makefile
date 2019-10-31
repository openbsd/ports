# $OpenBSD: Makefile,v 1.21 2019/10/31 00:59:28 afresh1 Exp $

COMMENT =	error/exception handling in an OO-ish way

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Error-0.17028
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES =	Yes

TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
