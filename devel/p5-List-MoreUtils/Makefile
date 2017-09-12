# $OpenBSD: Makefile,v 1.25 2017/09/12 13:46:36 bluhm Exp $

COMMENT =	provide the stuff missing in List::Util

DISTNAME =	List-MoreUtils-0.425

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5, Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exporter-Tiny>=0.038 \
			devel/p5-List-MoreUtils-XS>=0.423
TEST_DEPENDS =		devel/p5-Test-LeakTrace

PKG_ARCH =		*

.include <bsd.port.mk>
