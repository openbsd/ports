# $OpenBSD: Makefile,v 1.36 2020/11/06 19:45:59 jasper Exp $

COMMENT =	perl interface to ZIP files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Archive-Zip-1.68

CATEGORIES =	archivers

# Perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/p5-Test-MockModule

.include <bsd.port.mk>
