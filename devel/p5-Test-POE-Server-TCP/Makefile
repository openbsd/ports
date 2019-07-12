# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:11 sthen Exp $

COMMENT =	POE component providing TCP server services for test cases

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-POE-Server-TCP-1.20
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

MAKE_ENV +=	TEST_POD=1

RUN_DEPENDS=	devel/p5-POE
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
