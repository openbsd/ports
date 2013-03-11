# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:44 espie Exp $

COMMENT =	configure your application with environment variables

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-ConfigLoader-Environment-0.07
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
