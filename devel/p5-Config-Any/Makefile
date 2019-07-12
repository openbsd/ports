# $OpenBSD: Makefile,v 1.30 2019/07/12 20:44:48 sthen Exp $

COMMENT =	load various configuration file formats

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Config-Any-0.32
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

# All of these would be needed to parse all these configuration
# formats.
TEST_DEPENDS =	devel/p5-Config-Tiny \
		converters/p5-JSON \
		devel/p5-YAML \
		devel/p5-Config-General
RUN_DEPENDS =	devel/p5-Module-Pluggable

.include <bsd.port.mk>
