# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:45 sthen Exp $

COMMENT =	implement the data type "matrix of reals"
DISTNAME =	Math-MatrixReal-2.13
CATEGORIES =	math

# Perl
PERMIT_PACKAGE =		Yes

MODULES =	cpan
PKG_ARCH =	*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

CONFIGURE_STYLE =	modbuild

TEST_DEPENDS =		devel/p5-Test-Most

.include <bsd.port.mk>
