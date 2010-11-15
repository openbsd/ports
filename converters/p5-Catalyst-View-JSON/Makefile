# $OpenBSD: Makefile,v 1.3 2010/11/15 00:22:50 espie Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	Catalyst-View-JSON-0.24
CATEGORIES =	converters www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		www/p5-Catalyst-Runtime
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
