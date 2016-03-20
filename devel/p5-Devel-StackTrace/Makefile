# $OpenBSD: Makefile,v 1.21 2016/03/20 19:56:20 naddy Exp $

COMMENT =	an object representing a stack trace

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Devel-StackTrace-2.00
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

# We don't have all the dependencies for author/release testing
MAKE_ENV =	AUTHOR_TESTING= RELEASE_TESTING=

.include <bsd.port.mk>
