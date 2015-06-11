# $OpenBSD: Makefile,v 1.15 2015/06/11 07:04:43 benoit Exp $

COMMENT =	wrapper class for the various JSON classes

MODULES =	cpan
DISTNAME =	JSON-Any-1.39
CATEGORIES =	converters

# Perl
PERMIT_PACKAGE_CDROM = Yes

RUN_DEPENDS =	converters/p5-JSON>=2.21 \
		converters/p5-JSON-DWIW \
		converters/p5-JSON-XS>=2.33v1 \
		devel/p5-YAML-Syck
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires \
		devel/p5-Test-Warnings \
		devel/p5-Test-Without-Module

.include <bsd.port.mk>
