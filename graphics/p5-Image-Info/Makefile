# $OpenBSD: Makefile,v 1.26 2015/09/03 14:35:28 benoit Exp $

COMMENT =	perl module for getting image information

MODULES =	cpan
DISTNAME =	Image-Info-1.38
CATEGORIES =	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-IO-String>=1.08

TEST_DEPENDS =	textproc/p5-XML-Simple

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
