# $OpenBSD: Makefile,v 1.1.1.1 2019/03/14 14:47:07 stsp Exp $

COMMENT =	auto-complete and text expansion in X11

V =		4.2.0
DISTNAME =	TextSuggest-v${V}
PKGNAME =	textsuggest-${V}
CATEGORIES =	x11

HOMEPAGE =	https://bharadwaj-raju.itch.io/textsuggest

MAINTAINER =	Stefan Sperling <stsp@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets \
			dbus-c++-1 m xcb

MASTER_SITES =		https://gitlab.com/bharadwaj-raju/TextSuggest/-/archive/v${V}/

MODULES =		x11/qt5
RUN_DEPENDS =		x11/xdotool
LIB_DEPENDS =		x11/libdbus-c++

CXXFLAGS = 		-std=c++11 \
			-I${X11BASE}/include \
			-I${LOCALBASE}/include/dbus-c++-1
LDFLAGS = 		-L${X11BASE}/lib -L${PREFIX}/lib -lxcb -ldbus-c++-1

SEPARATE_BUILD =	No
CONFIGURE_STYLE =	none

pre-configure:
	${SUBST_CMD} ${WRKSRC}/server/Files.hpp

# Unfortunately, Makefiles shipped by upstream are useless for us.
TEXTSUGGEST_SERVER_SRC = textsuggest-server.cpp \
	../lib/clip/clip.cpp \
	../lib/clip/image.cpp \
	../lib/clip/clip_x11.cpp

do-build:
	cd ${WRKBUILD}/ui && ${SETENV} ${MAKE_ENV} ${MODQT_QMAKE} -makefile
	cd ${WRKBUILD}/ui && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
	cd ${WRKBUILD}/server && ${SETENV} ${MAKE_ENV} \
		${CXX} ${CFLAGS} ${CXXFLAGS} ${LDFLAGS} \
		${TEXTSUGGEST_SERVER_SRC} -o textsuggest-server
.for processor in command math_expression
	cd ${WRKBUILD}/textsuggest/processors/ && \
		${SETENV} ${MAKE_ENV} \
		${CXX} ${CFLAGS} ${CXXFLAGS} ${LDFLAGS} \
		${processor}.cpp -o ${processor}
.endfor

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ui/textsuggest ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/server/textsuggest-server ${PREFIX}/bin
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/textsuggest
.for processor in command math_expression
	${INSTALL_PROGRAM} ${WRKSRC}/textsuggest/processors/${processor} \
		${PREFIX}/libexec/textsuggest/${processor}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/textsuggest
	${INSTALL_DATA_DIR} ${PREFIX}/share/textsuggest/dictionaries
	ln -s /usr/share/dict/words \
		${PREFIX}/share/textsuggest/dictionaries/English.txt

.include <bsd.port.mk>
