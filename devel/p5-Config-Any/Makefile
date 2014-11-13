# $OpenBSD: Makefile,v 1.21 2014/11/13 10:47:24 benoit Exp $

COMMENT=	load various configuration file formats

MODULES=	cpan
DISTNAME =	Config-Any-0.24
CATEGORIES=	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

# All of these would be needed to parse all these configuration
# formats.
TEST_DEPENDS=devel/p5-Config-Tiny \
		converters/p5-JSON \
		devel/p5-YAML \
		devel/p5-Config-General

.include <bsd.port.mk>
