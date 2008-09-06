# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 10:33:48 simon Exp $

COMMENT =	configure your application with environment variables

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-ConfigLoader-Environment-0.05
CATEGORIES =	www

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
