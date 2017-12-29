# $OpenBSD: Makefile,v 1.3 2017/12/29 07:24:49 florian Exp $

COMMENT =	module to check for C library availablity

MODULES =	cpan
DISTNAME =	Devel-CheckLib-1.02
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=	perl

TEST_DEPENDS =	devel/p5-IO-CaptureOutput>=1.0801

.include <bsd.port.mk>
