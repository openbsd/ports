# $OpenBSD: Makefile,v 1.25 2021/12/25 17:43:53 afresh1 Exp $

COMMENT =	module to declare real exception classes in perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Exception-Class-1.45
CATEGORIES =	devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

# We don't have all the dependencies for author/release testing
MAKE_ENV =	RELEASE_TESTING= AUTHOR_TESTING=

RUN_DEPENDS =	devel/p5-Class-Data-Inheritable>=0.02 \
		devel/p5-Devel-StackTrace>=2.0

.include <bsd.port.mk>
