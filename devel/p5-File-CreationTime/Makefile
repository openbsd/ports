# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:54 sthen Exp $

COMMENT =	keeps track of file creation times

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	File-CreationTime-2.04
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-File-Attributes
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
