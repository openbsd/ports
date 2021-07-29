# $OpenBSD: Makefile,v 1.1.1.1 2021/07/29 00:38:15 afresh1 Exp $

COMMENT =	easier filters for OpenSMTPd in perl

DISTNAME =	OpenSMTPd-Filter-v0.0.2
PKGNAME =	p5-${DISTNAME:S/-v/-/}
CPAN_AUTHOR =	ANDREW
PKG_ARCH =	*

CATEGORIES =	mail

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test2-Suite>=0.000121

.include <bsd.port.mk>
