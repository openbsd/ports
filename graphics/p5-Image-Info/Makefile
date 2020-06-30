# $OpenBSD: Makefile,v 1.32 2020/06/30 08:03:51 benoit Exp $

COMMENT =	perl module for getting image information

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Image-Info-1.42
CATEGORIES =	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-IO-String>=1.08

TEST_DEPENDS =	textproc/p5-XML-Simple

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
