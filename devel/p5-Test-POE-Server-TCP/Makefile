# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:38 naddy Exp $

COMMENT =	POE component providing TCP server services for test cases

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-POE-Server-TCP-1.18
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MAKE_ENV +=	TEST_POD=1

RUN_DEPENDS=	devel/p5-POE
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
