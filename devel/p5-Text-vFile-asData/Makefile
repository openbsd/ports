# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:12 sthen Exp $

COMMENT =	parse vFile formatted files into data structures

DISTNAME =	Text-vFile-asData-0.08

CATEGORIES =	devel textproc

MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Class-Accessor-Chained

MAKE_ENV +=		TEST_POD=1

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
