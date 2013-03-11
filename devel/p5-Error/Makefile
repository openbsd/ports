# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:16 espie Exp $

COMMENT=	error/exception handling in an OO-ish way

MODULES=	cpan
DISTNAME=	Error-0.17019
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MODCPAN_EXAMPLES=	Yes

TEST_DEPENDS =	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
