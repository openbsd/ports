# $OpenBSD: Makefile,v 1.9 2017/04/29 10:37:56 benoit Exp $

COMMENT =	POE component providing TCP server services for test cases

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-POE-Server-TCP-1.20
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MAKE_ENV +=	TEST_POD=1

RUN_DEPENDS=	devel/p5-POE
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
