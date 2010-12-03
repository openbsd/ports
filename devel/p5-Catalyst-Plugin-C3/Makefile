# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:27 ajacoutot Exp $

COMMENT =	Catalyst plugin to subvert NEXT to use Class::C3

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-C3-0.03
REVISION =	0
CATEGORIES =	devel www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-Class-C3
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
