# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:29 sthen Exp $

COMMENT =	implement the data type "matrix of reals"
DISTNAME =	Math-MatrixReal-2.13
CATEGORIES =	math
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

MODULES =	cpan
PKG_ARCH =	*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

CONFIGURE_STYLE =	modbuild

TEST_DEPENDS =		devel/p5-Test-Most

.include <bsd.port.mk>
