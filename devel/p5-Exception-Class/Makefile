# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:53 sthen Exp $

COMMENT =	module to declare real exception classes in perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Exception-Class-1.44
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

# We don't have all the dependencies for author/release testing
MAKE_ENV =	RELEASE_TESTING= AUTHOR_TESTING=

RUN_DEPENDS =	devel/p5-Class-Data-Inheritable>=0.02 \
		devel/p5-Devel-StackTrace>=2.00

.include <bsd.port.mk>
