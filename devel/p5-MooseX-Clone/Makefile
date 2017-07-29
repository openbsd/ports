# $OpenBSD: Makefile,v 1.10 2017/07/29 13:23:22 bluhm Exp $

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

.include <bsd.port.mk>
