# $OpenBSD: Makefile,v 1.2 2014/11/17 10:44:50 sthen Exp $

V =		3.1.12
COMMENT =	query for a selection and print to stdout (select operation)
DISTNAME =	slop-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}
GH_COMMIT =	2636e117f8fcd5c605c8c26e81a83c37c91ceab2

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>
HOMEPAGE =	https://github.com/naelstrof/slop

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext c m stdc++

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gengetopt \
		sysutils/coreutils \
		textproc/gsed

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,-Werror -pedantic-errors,,g |\
		s,/usr/bin,${PREFIX}/bin,g |\
		s,sed$$,gsed,g" ${WRKSRC}/CMakeLists.txt

# Same problem as with graphics/maim (by the same author).
pre-build:
	# For some reason CMake can't do this itself?
	perl -pi -e \
		"s,\@slop_VERSION_MAJOR\@\.\@slop_VERSION_MINOR\@\.\@slop_VERSION_PATCH\@,${V},g" \
			${WRKSRC}/src/cmdline.h

.include <bsd.port.mk>
