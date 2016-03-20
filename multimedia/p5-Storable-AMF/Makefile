# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:50 naddy Exp $

COMMENT =	deserializer for Adobe Action Message Format

DISTNAME =	Storable-AMF-1.08
CATEGORIES =	multimedia
CPAN_AUTHOR =	GRIAN

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB=	perl

MODULES =	cpan

TEST_DEPENDS = converters/p5-JSON-XS \
		devel/p5-boolean \
		devel/p5-Test-Pod

.include <bsd.port.mk>
