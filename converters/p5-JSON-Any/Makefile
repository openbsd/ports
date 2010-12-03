# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT =	wrapper class for the various JSON classes

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	JSON-Any-1.22
REVISION =	0
CATEGORIES =	converters

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	converters/p5-JSON>=2.21 \
		converters/p5-JSON-DWIW \
		converters/p5-JSON-XS \
		devel/p5-YAML-Syck
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
