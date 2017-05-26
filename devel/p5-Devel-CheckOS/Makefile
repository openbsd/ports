# $OpenBSD: Makefile,v 1.4 2017/05/26 21:50:35 bluhm Exp $

COMMENT =	check what OS we are running on

DISTNAME =	Devel-CheckOS-1.80

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2 or Artistic
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Data-Compare>=1.21 \
			devel/p5-File-Find-Rule>=0.28

PKG_ARCH =		*

.include <bsd.port.mk>
