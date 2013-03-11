# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:23 espie Exp $

COMMENT =	test for valid YAML

MODULES =	cpan
DISTNAME =	Test-YAML-Valid-0.03
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-YAML
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-YAML-Syck

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
