# $OpenBSD: Makefile,v 1.31 2016/11/02 22:28:52 jasper Exp $

COMMENT =	perl interface to ZIP files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Archive-Zip-1.59

CATEGORIES =	archivers

# Perl
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS =	archivers/zip \
		devel/p5-Test-MockModule \
		devel/p5-Test-Pod

pre-configure:
	find ${WRKSRC} -type f -name \*.orig -exec rm {} \;

.include <bsd.port.mk>
