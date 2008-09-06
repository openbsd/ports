# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 10:33:41 simon Exp $

COMMENT =	flexible caching support for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-0.06
CATEGORIES =	www

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
