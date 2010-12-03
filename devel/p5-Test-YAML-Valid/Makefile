# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT =	test for valid YAML

MODULES =	cpan
DISTNAME =	Test-YAML-Valid-0.03
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-YAML
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-YAML-Syck

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
