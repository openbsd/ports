# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:28 naddy Exp $

COMMENT =	fine grained cloning support for Moose objects

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Clone-0.06
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Data-Visitor>=0.24 \
			devel/p5-Hash-Util-FieldHash-Compat \
			devel/p5-Moose>=0.74 \
			devel/p5-namespace-clean
BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-use-ok

.include <bsd.port.mk>
