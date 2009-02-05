# $OpenBSD: Makefile,v 1.1.1.1 2009/02/05 18:00:17 simon Exp $

COMMENT =	return a new component instance per request

MODULES =	cpan
DISTNAME =	Catalyst-Component-InstancePerContext-0.001001
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-Moose \
			::www/p5-Catalyst-Runtime

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
