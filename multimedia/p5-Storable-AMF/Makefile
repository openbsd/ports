# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:30 sthen Exp $

COMMENT =	deserializer for Adobe Action Message Format

DISTNAME =	Storable-AMF-1.23
CATEGORIES =	multimedia
CPAN_AUTHOR =	GRIAN
REVISION =	0

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

TEST_DEPENDS = converters/p5-JSON-XS \
		devel/p5-boolean \
		devel/p5-Test-Pod

.include <bsd.port.mk>
