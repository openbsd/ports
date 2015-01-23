# $OpenBSD: Makefile,v 1.15 2015/01/23 20:58:04 benoit Exp $

COMMENT=	error/exception handling in an OO-ish way

MODULES=	cpan
DISTNAME =	Error-0.17022
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MODCPAN_EXAMPLES=	Yes

TEST_DEPENDS =	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
