# $OpenBSD: Makefile,v 1.3 2020/07/03 21:45:09 sthen Exp $

COMMENT =	helper routines for using Sub::Exporter to build methods

DISTNAME =	Sub-Exporter-ForMethods-0.100052
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Sub-Exporter>=0.978 \
			devel/p5-Sub-Name

TEST_DEPENDS =		devel/p5-namespace-autoclean

PKG_ARCH =		*

.include <bsd.port.mk>
