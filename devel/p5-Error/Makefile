# $OpenBSD: Makefile,v 1.17 2015/06/03 07:17:45 ajacoutot Exp $

COMMENT=	error/exception handling in an OO-ish way

MODULES=	cpan
DISTNAME =	Error-0.17024
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MODCPAN_EXAMPLES=	Yes

TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
