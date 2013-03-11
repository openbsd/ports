# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:22 espie Exp $

COMMENT =	POE component providing TCP server services for test cases

MODULES =	cpan
DISTNAME =	Test-POE-Server-TCP-1.14
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MAKE_ENV +=	TEST_POD=1

RUN_DEPENDS=	devel/p5-POE
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
