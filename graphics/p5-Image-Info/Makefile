# $OpenBSD: Makefile,v 1.27 2016/03/20 19:56:44 naddy Exp $

COMMENT =	perl module for getting image information

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Image-Info-1.38
CATEGORIES =	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-IO-String>=1.08

TEST_DEPENDS =	textproc/p5-XML-Simple

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
