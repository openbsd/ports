# $OpenBSD: Makefile,v 1.9 2013/03/11 01:30:28 espie Exp $

COMMENT =	wrapper class for the various JSON classes

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	JSON-Any-1.22
REVISION =	0
CATEGORIES =	converters

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON>=2.21 \
		converters/p5-JSON-DWIW \
		converters/p5-JSON-XS \
		devel/p5-YAML-Syck
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
