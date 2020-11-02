# $OpenBSD: Makefile,v 1.10 2020/11/02 14:55:06 bluhm Exp $

COMMENT =	check what OS we are running on

DISTNAME =	Devel-CheckOS-1.85

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2 or Artistic
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-File-Find-Rule>=0.28
TEST_DEPENDS =		devel/p5-Test-Pod>=1.00

PKG_ARCH =		*

.include <bsd.port.mk>
