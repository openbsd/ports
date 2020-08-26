# $OpenBSD: Makefile,v 1.13 2020/08/26 01:48:52 afresh1 Exp $

COMMENT =	fine grained cloning support for Moose objects

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Clone-0.06
CATEGORIES =	devel
REVISION =	1

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-Data-Visitor>=0.24 \
			devel/p5-Hash-Util-FieldHash-Compat \
			devel/p5-Moose>=0.74 \
			devel/p5-namespace-autoclean
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
