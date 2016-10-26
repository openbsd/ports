# $OpenBSD: Makefile,v 1.1.1.1 2016/10/26 08:36:39 bluhm Exp $

COMMENT =	check what OS we are running on

DISTNAME =	Devel-CheckOS-1.77

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2 or Artistic
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-File-Find-Rule>=0.28
RUN_DEPENDS =		devel/p5-Data-Compare>=1.21 \
			devel/p5-File-Find-Rule>=0.28

.include <bsd.port.mk>
