# $OpenBSD: Makefile,v 1.16 2015/04/01 12:57:32 benoit Exp $

COMMENT=	error/exception handling in an OO-ish way

MODULES=	cpan
DISTNAME =	Error-0.17023
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MODCPAN_EXAMPLES=	Yes

TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
