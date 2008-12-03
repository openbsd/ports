# $OpenBSD: Makefile,v 1.2 2008/12/03 21:32:11 simon Exp $

COMMENT =	wrapper class for the various JSON classes

MODULES =	cpan
DISTNAME =	JSON-Any-1.18
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
