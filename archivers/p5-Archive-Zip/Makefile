# $OpenBSD: Makefile,v 1.33 2019/07/12 20:43:29 sthen Exp $

COMMENT =	perl interface to ZIP files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Archive-Zip-1.64

CATEGORIES =	archivers

# Perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/p5-Test-MockModule

pre-configure:
	find ${WRKSRC} -type f -name \*.orig -delete

.include <bsd.port.mk>
