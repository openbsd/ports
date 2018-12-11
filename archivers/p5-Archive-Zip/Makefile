# $OpenBSD: Makefile,v 1.32 2018/12/11 21:29:30 kn Exp $

COMMENT =	perl interface to ZIP files

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Archive-Zip-1.64

CATEGORIES =	archivers

# Perl
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/p5-Test-MockModule

pre-configure:
	find ${WRKSRC} -type f -name \*.orig -delete

.include <bsd.port.mk>
