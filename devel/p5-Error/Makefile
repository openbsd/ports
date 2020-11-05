# $OpenBSD: Makefile,v 1.23 2020/11/05 08:55:26 benoit Exp $

COMMENT =	error/exception handling in an OO-ish way

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Error-0.17029
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES =	Yes

TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
