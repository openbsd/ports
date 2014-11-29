# $OpenBSD: Makefile,v 1.5 2014/11/29 15:29:40 bcallah Exp $

V =		4.1.15
COMMENT =	query for a selection and print to stdout (select operation)
DISTNAME =	slop-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}
GH_COMMIT =	cbc18562ff5129e3b3c2a2031acc3284164d5939

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>
HOMEPAGE =	https://github.com/naelstrof/slop

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext c m stdc++

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
