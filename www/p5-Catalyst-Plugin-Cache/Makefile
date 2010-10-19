# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:54 espie Exp $

COMMENT =	flexible caching support for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-0.06
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl/MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::www/p5-Catalyst-Runtime
REGRESS_DEPENDS =	::devel/p5-Test-Exception \
			::devel/p5-Test-Deep \
			::devel/p5-Test-use-ok

.include <bsd.port.mk>
