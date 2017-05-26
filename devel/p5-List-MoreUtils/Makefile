# $OpenBSD: Makefile,v 1.23 2017/05/26 12:34:33 bluhm Exp $

COMMENT =	provide the stuff missing in List::Util

DISTNAME =	List-MoreUtils-0.419

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5, Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exporter-Tiny>=0.038
TEST_DEPENDS =		devel/p5-Test-LeakTrace

PKG_ARCH =		*

.include <bsd.port.mk>
