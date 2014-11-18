# $OpenBSD: Makefile,v 1.3 2014/11/18 18:52:48 bcallah Exp $

V =		3.1.14
COMMENT =	query for a selection and print to stdout (select operation)
DISTNAME =	slop-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}
GH_COMMIT =	ce9a0ca84a1dfac38614f42fdec3cc982db89afc

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
