# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:55 espie Exp $

COMMENT =	log Perl warnings to your Catalyst log object

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-LogWarnings-0.02
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::converters/p5-JSON-Any \
		::devel/p5-Catalyst-Plugin-C3 \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
