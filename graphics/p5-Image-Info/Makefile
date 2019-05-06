# $OpenBSD: Makefile,v 1.30 2019/05/06 15:40:06 benoit Exp $

COMMENT =	perl module for getting image information

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Image-Info-1.41
CATEGORIES =	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-IO-String>=1.08

TEST_DEPENDS =	textproc/p5-XML-Simple

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
