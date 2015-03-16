# $OpenBSD: Makefile,v 1.24 2015/03/16 09:49:27 benoit Exp $

COMMENT =	module for graph plotting

VERSION =	1.49
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
