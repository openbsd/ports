# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:44 sthen Exp $

COMMENT =		simple and dumb file system watcher

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Filesys-Notify-Simple-0.14
CATEGORIES =		sysutils
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>
REVISION =		0

BUILD_DEPENDS =		devel/p5-Test-SharedFork

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV =		TEST_POD=yes AUTHOR_TESTING=yes

.include <bsd.port.mk>
