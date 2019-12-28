# $OpenBSD: Makefile,v 1.34 2019/12/28 17:26:52 sthen Exp $

COMMENT =	perl interface to ZIP files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Archive-Zip-1.67

CATEGORIES =	archivers

# Perl
PERMIT_PACKAGE =	Yes

# t/26_bzip2.t fails because archivers/unzip is not built with bzip2 support.
TEST_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/p5-Test-MockModule

.include <bsd.port.mk>
