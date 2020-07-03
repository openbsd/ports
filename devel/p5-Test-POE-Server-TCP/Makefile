# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:15 sthen Exp $

COMMENT =	POE component providing TCP server services for test cases

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-POE-Server-TCP-1.20
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

MAKE_ENV +=	TEST_POD=1

RUN_DEPENDS=	devel/p5-POE
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
