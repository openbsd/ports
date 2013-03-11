# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:16 espie Exp $

COMMENT =	manipulate file metadata

MODULES =	cpan
DISTNAME =	File-Attributes-0.04
REVISION =	2
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Best \
		devel/p5-YAML

# p5-Directory-Scratch should be TEST_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-Directory-Scratch \
		devel/p5-YAML-Syck

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
