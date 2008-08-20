# $OpenBSD: Makefile,v 1.1.1.1 2008/08/20 11:05:43 simon Exp $

COMMENT =	wrapper class for the various JSON classes

MODULES =	cpan
DISTNAME =	JSON-Any-1.17
CATEGORIES =	converters

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	:p5-JSON->=2.02:converters/p5-JSON \
		::converters/p5-JSON-DWIW \
		::converters/p5-JSON-XS \
		::devel/p5-YAML-Syck
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
