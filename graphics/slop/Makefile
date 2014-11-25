# $OpenBSD: Makefile,v 1.4 2014/11/25 19:58:39 bcallah Exp $

V =		3.1.15
COMMENT =	query for a selection and print to stdout (select operation)
DISTNAME =	slop-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}
GH_COMMIT =	761a7c0d009178b31532da15e8b59fba41f0080b

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>
HOMEPAGE =	https://github.com/naelstrof/slop

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext c m stdc++

MODULES =	devel/cmake

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,/usr/bin,${PREFIX}/bin,g" ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
