# $OpenBSD: Makefile,v 1.11 2014/07/12 20:11:24 giovanni Exp $

COMMENT =	wrapper class for the various JSON classes

MODULES =	cpan
DISTNAME =	JSON-Any-1.34
CATEGORIES =	converters

# Perl
PERMIT_PACKAGE_CDROM = Yes

RUN_DEPENDS =	converters/p5-JSON>=2.21 \
		converters/p5-JSON-DWIW \
		converters/p5-JSON-XS>=2.33v1 \
		devel/p5-YAML-Syck
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Warnings \
		devel/p5-Test-Without-Module

.include <bsd.port.mk>
