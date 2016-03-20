# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:40 naddy Exp $

COMMENT =		easy-to-use date/time formatting

DISTNAME =		Time-Format-1.12
CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =	converters/p5-DateManip \
			devel/p5-DateTime

.include <bsd.port.mk>
