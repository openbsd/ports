# $OpenBSD: Makefile,v 1.20 2019/07/12 20:44:52 sthen Exp $

COMMENT=	error/exception handling in an OO-ish way

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Error-0.17025
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

MODCPAN_EXAMPLES=	Yes

TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
