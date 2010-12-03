# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	Catalyst-View-JSON-0.24
REVISION =	0
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
