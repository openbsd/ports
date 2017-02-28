# $OpenBSD: Makefile,v 1.27 2017/02/28 10:25:11 benoit Exp $

COMMENT =	load various configuration file formats

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Config-Any-0.29
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

# All of these would be needed to parse all these configuration
# formats.
TEST_DEPENDS =	devel/p5-Config-Tiny \
		converters/p5-JSON \
		devel/p5-YAML \
		devel/p5-Config-General
RUN_DEPENDS =	devel/p5-Module-Pluggable

.include <bsd.port.mk>
