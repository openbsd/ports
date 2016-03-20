# $OpenBSD: Makefile,v 1.18 2016/03/20 19:56:21 naddy Exp $

COMMENT=	error/exception handling in an OO-ish way

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Error-0.17024
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MODCPAN_EXAMPLES=	Yes

TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
