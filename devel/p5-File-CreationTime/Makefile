# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:17 espie Exp $

COMMENT =	keeps track of file creation times

MODULES =	cpan
DISTNAME =	File-CreationTime-2.04
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-File-Attributes
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
