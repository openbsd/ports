# $OpenBSD: Makefile,v 1.19 2018/04/28 13:53:21 ajacoutot Exp $

COMMENT=	error/exception handling in an OO-ish way

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Error-0.17025
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MODCPAN_EXAMPLES=	Yes

TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
