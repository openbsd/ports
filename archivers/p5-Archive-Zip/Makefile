# $OpenBSD: Makefile,v 1.35 2020/07/03 21:44:29 sthen Exp $

COMMENT =	perl interface to ZIP files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Archive-Zip-1.67
REVISION =	0

CATEGORIES =	archivers

# Perl
PERMIT_PACKAGE =	Yes

# t/26_bzip2.t fails because archivers/unzip is not built with bzip2 support.
TEST_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/p5-Test-MockModule

.include <bsd.port.mk>
