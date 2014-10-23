# $OpenBSD: Makefile,v 1.5 2014/10/23 13:52:22 nigel Exp $

SHARED_ONLY =	Yes

COMMENT =	deserializer for Adobe Action Message Format

DISTNAME =	Storable-AMF-1.02
CATEGORIES =	multimedia
CPAN_AUTHOR =	GRIAN

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c

MODULES =	cpan

TEST_DEPENDS = converters/p5-JSON-XS \
		devel/p5-boolean \
		devel/p5-Test-Pod

.include <bsd.port.mk>
