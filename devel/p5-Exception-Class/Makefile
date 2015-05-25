# $OpenBSD: Makefile,v 1.20 2015/05/25 03:50:39 afresh1 Exp $

COMMENT =	module to declare real exception classes in perl

MODULES =	cpan
DISTNAME =	Exception-Class-1.39
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

# We don't have all the dependencies for author/release testing
MAKE_ENV =	RELEASE_TESTING= AUTHOR_TESTING=

RUN_DEPENDS =	devel/p5-Class-Data-Inheritable>=0.02 \
		devel/p5-Devel-StackTrace>=2.00

.include <bsd.port.mk>
