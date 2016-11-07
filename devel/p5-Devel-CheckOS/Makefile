# $OpenBSD: Makefile,v 1.3 2016/11/07 21:53:42 bluhm Exp $

COMMENT =	check what OS we are running on

DISTNAME =	Devel-CheckOS-1.79

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2 or Artistic
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Data-Compare>=1.21 \
			devel/p5-File-Find-Rule>=0.28

PKG_ARCH =		*

.include <bsd.port.mk>
