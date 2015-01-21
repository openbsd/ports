# $OpenBSD: Makefile,v 1.6 2015/01/21 14:27:57 sthen Exp $

COMMENT =	keeps track of file creation times

MODULES =	cpan
DISTNAME =	File-CreationTime-2.04
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-File-Attributes
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
