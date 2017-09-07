# $OpenBSD: Makefile,v 1.9 2017/09/07 18:54:07 nigel Exp $

COMMENT =	deserializer for Adobe Action Message Format

DISTNAME =	Storable-AMF-1.23
CATEGORIES =	multimedia
CPAN_AUTHOR =	GRIAN

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB +=	c perl

MODULES =	cpan

TEST_DEPENDS = converters/p5-JSON-XS \
		devel/p5-boolean \
		devel/p5-Test-Pod

.include <bsd.port.mk>
