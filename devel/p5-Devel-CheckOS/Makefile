# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:51 sthen Exp $

COMMENT =	check what OS we are running on

DISTNAME =	Devel-CheckOS-1.81

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2 or Artistic
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Data-Compare>=1.21 \
			devel/p5-File-Find-Rule>=0.28

PKG_ARCH =		*

.include <bsd.port.mk>
