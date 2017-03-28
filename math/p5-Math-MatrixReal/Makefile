# $OpenBSD: Makefile,v 1.11 2017/03/28 10:52:06 benoit Exp $

COMMENT =	implement the data type "matrix of reals"
DISTNAME =	Math-MatrixReal-2.13
CATEGORIES =	math

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	cpan
PKG_ARCH =	*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

CONFIGURE_STYLE =	modbuild

TEST_DEPENDS =		devel/p5-Test-Most

.include <bsd.port.mk>
