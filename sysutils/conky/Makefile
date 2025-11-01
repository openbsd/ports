ONLY_FOR_ARCHS = ${APM_ARCHS}

COMMENT =	light-weight system monitor

GH_ACCOUNT =	brndnmtthws
GH_PROJECT =	conky
GH_TAGNAME =	v1.22.1
REVISION =	4

CATEGORIES =	sysutils

# mostly GPLv3; see COPYING
PERMIT_PACKAGE=	Yes

# C++
COMPILER =	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} c curses intl kvm m ossaudio
WANTLIB += curl xml2

MODULES =	devel/cmake \
		lang/lua \
		lang/python

# dependency to build docs
MODPY_RUNDEP = No

MODLUA_VERSION =	5.3
MODLUA_SA =		Yes

BUILD_DEPENDS =	devel/gperf \
		textproc/lowdown \
		textproc/py-yaml \
		www/py-jinja2

LIB_DEPENDS =	devel/gettext,-runtime \
		net/curl \
		textproc/libxml \
		${MODLUA_LIB_DEPENDS}

FLAVORS =	no_x11
FLAVOR?=

CONFIGURE_ARGS =	-DBUILD_AUDACIOUS=OFF \
			-DBUILD_HDDTEMP=OFF \
			-DBUILD_IBM=OFF \
			-DBUILD_MOC=OFF \
			-DBUILD_IOSTATS=OFF \
			-DBUILD_PORT_MONITORS=OFF

CONFIGURE_ARGS +=	-DBUILD_RSS=ON \
			-DBUILD_CURL=ON

CONFIGURE_ARGS +=	-DBUILD_DOCS=ON

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	-DBUILD_X11=OFF
.else
CONFIGURE_ARGS +=	-DBUILD_X11=ON
LIB_DEPENDS +=		graphics/imlib2 \
			x11/xcb-util-errors
WANTLIB += ICE Imlib2 SM X11 Xdamage Xext Xfixes Xft Xinerama fontconfig xcb
WANTLIB += xcb-errors
.endif

.include <bsd.port.mk>
