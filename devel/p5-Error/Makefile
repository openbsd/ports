# $OpenBSD: Makefile,v 1.22 2020/07/03 21:44:50 sthen Exp $

COMMENT =	error/exception handling in an OO-ish way

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Error-0.17028
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES =	Yes

TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
