# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:44 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	deserializer for Adobe Action Message Format

DISTNAME =	Storable-AMF-1.00
REVISION =	0
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
