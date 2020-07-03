# $OpenBSD: Makefile,v 1.5 2020/07/03 21:44:55 sthen Exp $

COMMENT =		recursively merge two or more hashes, simply

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Hash-Merge-Simple-0.051
CATEGORIES =		devel
REVISION =		1

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/p5-Test-Most

RUN_DEPENDS =		devel/p5-Clone

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Most

.include <bsd.port.mk>
