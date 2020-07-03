# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:01 sthen Exp $

COMMENT =	fine grained cloning support for Moose objects

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Clone-0.06
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-Data-Visitor>=0.24 \
			devel/p5-Hash-Util-FieldHash-Compat \
			devel/p5-Moose>=0.74 \
			devel/p5-namespace-clean
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
