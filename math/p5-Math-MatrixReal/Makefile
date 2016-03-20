# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:48 naddy Exp $

COMMENT =	implement the data type "matrix of reals"
DISTNAME =	Math-MatrixReal-2.12
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
