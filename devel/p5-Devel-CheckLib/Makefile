# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:20 naddy Exp $

COMMENT =	module to check for C library availablity

MODULES =	cpan
DISTNAME =	Devel-CheckLib-1.02
CATEGORIES =	devel

MAINTAINER =	Florian Obser <florian+ports@narrans.de>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=	perl

TEST_DEPENDS =	devel/p5-IO-CaptureOutput>=1.0801

.include <bsd.port.mk>
