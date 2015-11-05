# $OpenBSD: Makefile,v 1.7 2015/11/05 19:08:57 jca Exp $

COMMENT =	keeps track of file creation times

MODULES =	cpan
DISTNAME =	File-CreationTime-2.04
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-File-Attributes
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
