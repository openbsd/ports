# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:52 sthen Exp $

COMMENT =	keeps track of file creation times

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	File-CreationTime-2.04
REVISION =	2
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-File-Attributes
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
