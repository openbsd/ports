# $OpenBSD: Makefile,v 1.5 2010/10/18 17:06:06 espie Exp $

COMMENT =	wrapper class for the various JSON classes

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	JSON-Any-1.22
CATEGORIES =	converters

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	:p5-JSON->=2.21:converters/p5-JSON \
		::converters/p5-JSON-DWIW \
		::converters/p5-JSON-XS \
		::devel/p5-YAML-Syck
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
