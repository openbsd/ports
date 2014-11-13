# $OpenBSD: Makefile,v 1.1.1.1 2014/11/13 20:42:59 bcallah Exp $

V =		2.3.33
COMMENT =	desktop screenshot utility (make image)
DISTNAME =	maim-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}
GH_COMMIT =	a2df4c7969b6258b3306227900bcfcb83a5a6f6b

HOMEPAGE =	https://github.com/naelstrof/maim
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Imlib2 SM X11 Xext Xfixes Xrandr c freetype m stdc++
WANTLIB += z

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gengetopt

LIB_DEPENDS =	graphics/imlib2

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,-Werror -pedantic-errors,,g |\
		s,/usr/bin,${PREFIX}/bin,g" ${WRKSRC}/CMakeLists.txt
pre-build:
	# For some reason CMake can't do this itself?
	perl -pi -e \
		"s,\@maim_VERSION_MAJOR\@\.\@maim_VERSION_MINOR\@\.\@maim_VERSION_PATCH\@,${V},g" \
			${WRKSRC}/src/cmdline.h

.include <bsd.port.mk>
