# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:12 sthen Exp $

COMMENT =	set of tools built upon the Test2 framework

# Test2::Suite 0.000111 requires Test2::API 1.302127.  Our base
# Perl provides Test2::API 1.302133.  We cannot update p5-Test2-Suite
# as this would require newer Test2::API 1.302136.
DISTNAME =	Test2-Suite-0.000111

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Importer>=0.024 \
			devel/p5-Module-Pluggable>=2.7 \
			devel/p5-Scope-Guard \
			devel/p5-Sub-Info>=0.002 \
			devel/p5-Term-Table>=0.002

TEST_DEPENDS =		converters/p5-Unicode-LineBreak \
			devel/p5-Sub-Name \
			devel/p5-Term-Size-Any

PKG_ARCH =		*

CPAN_AUTHOR =		EXODIST

.include <bsd.port.mk>
