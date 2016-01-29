# $OpenBSD: Makefile,v 1.26 2016/01/29 08:50:39 benoit Exp $

COMMENT =	module for graph plotting

VERSION =	1.52
DISTNAME =	GDGraph-${VERSION}
PKGNAME =	p5-GD-Graph-${VERSION}
CATEGORIES =	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

MASTER_SITES =	${MASTER_SITE_PERL_CPAN:=GD/}

RUN_DEPENDS =	graphics/p5-GD>=1.18 \
		graphics/p5-GD-TextUtil
BUILD_DEPENDS =	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

.include <bsd.port.mk>
