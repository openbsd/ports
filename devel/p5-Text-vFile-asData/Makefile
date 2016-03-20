# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:39 naddy Exp $

COMMENT =	parse vFile formatted files into data structures

DISTNAME =	Text-vFile-asData-0.08

CATEGORIES =	devel textproc

MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Class-Accessor-Chained

MAKE_ENV +=		TEST_POD=1

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
