# $OpenBSD: Makefile,v 1.5 2020/06/10 21:21:18 bluhm Exp $

COMMENT =	set of tools built upon the Test2 framework

DISTNAME =	Test2-Suite-0.000130
CPAN_AUTHOR =	EXODIST

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Importer>=0.024 \
			devel/p5-Module-Pluggable>=2.7 \
			devel/p5-Scope-Guard \
			devel/p5-Sub-Info>=0.002 \
			devel/p5-Term-Table>=0.013
TEST_DEPENDS =		converters/p5-Unicode-LineBreak \
			devel/p5-Sub-Name \
			devel/p5-Term-Size-Any

PKG_ARCH =		*

.include <bsd.port.mk>
