# $OpenBSD: Makefile,v 1.7 2015/07/28 09:46:04 nigel Exp $

SHARED_ONLY =	Yes

COMMENT =	deserializer for Adobe Action Message Format

DISTNAME =	Storable-AMF-1.08
CATEGORIES =	multimedia
CPAN_AUTHOR =	GRIAN

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan

TEST_DEPENDS = converters/p5-JSON-XS \
		devel/p5-boolean \
		devel/p5-Test-Pod

.include <bsd.port.mk>
