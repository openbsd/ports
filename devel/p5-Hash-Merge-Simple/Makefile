# $OpenBSD: Makefile,v 1.3 2019/05/01 19:57:07 sthen Exp $

COMMENT =		recursively merge two or more hashes, simply

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Hash-Merge-Simple-0.051
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/p5-Test-Most

RUN_DEPENDS =		devel/p5-Clone

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Most

.include <bsd.port.mk>
