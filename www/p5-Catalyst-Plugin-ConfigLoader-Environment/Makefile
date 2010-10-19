# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:54 espie Exp $

COMMENT =	configure your application with environment variables

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-ConfigLoader-Environment-0.05
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::converters/p5-JSON-Any \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
