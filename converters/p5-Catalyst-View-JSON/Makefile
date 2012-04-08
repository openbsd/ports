# $OpenBSD: Makefile,v 1.5 2012/04/08 22:01:07 sthen Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	Catalyst-View-JSON-0.33
CATEGORIES =	converters www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	converters/p5-JSON-Any \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime
REGRESS_DEPENDS =	devel/p5-YAML

.include <bsd.port.mk>
