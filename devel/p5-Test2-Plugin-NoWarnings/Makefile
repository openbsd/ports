# $OpenBSD: Makefile,v 1.3 2020/07/03 21:45:17 sthen Exp $

COMMENT =	fail if tests warn

DISTNAME =	Test2-Plugin-NoWarnings-0.08
REVISION =	0

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan
TEST_DEPENDS =		sysutils/p5-Capture-Tiny \
			devel/p5-IPC-Run3 \
			devel/p5-Test2-Suite

PKG_ARCH =		*

CPAN_AUTHOR =	DROLSKY

.include <bsd.port.mk>
