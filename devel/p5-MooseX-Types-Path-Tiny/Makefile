# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:02 sthen Exp $

COMMENT =	Path::Tiny types and coercions for Moose

DISTNAME =	MooseX-Types-Path-Tiny-0.012

CATEGORIES =	devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-MooseX-Types-Stringlike \
			devel/p5-Moose>=2 \
			devel/p5-MooseX-Getopt \
			devel/p5-MooseX-Types \
			devel/p5-Path-Tiny \
			devel/p5-namespace-autoclean

TEST_DEPENDS =		devel/p5-File-pushd \
			devel/p5-Test-Fatal

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
