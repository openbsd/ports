# $OpenBSD: Makefile,v 1.3 2019/03/17 11:34:32 kn Exp $

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

CXXFLAGS +=		-std=c++11 \
			-I${X11BASE}/include \
			-I${LOCALBASE}/include/dbus-c++-1
LDFLAGS +=		-L${X11BASE}/lib -lxcb \
			-L${PREFIX}/lib -ldbus-c++-1

post-patch:
	${SUBST_CMD} ${WRKSRC}/server/Files.hpp

# Unfortunately, Makefiles shipped by upstream are useless for us.
TEXTSUGGEST_SERVER_SRC = textsuggest-server.cpp \
			../lib/clip/clip.cpp \
			../lib/clip/image.cpp \
			../lib/clip/clip_x11.cpp

PROCESSORS =		command \
			math_expression

do-build:
	cd ${WRKBUILD}/ui && ${SETENV} ${MAKE_ENV} ${MODQT_QMAKE} -makefile
	cd ${WRKBUILD}/ui && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
	cd ${WRKBUILD}/server && ${SETENV} ${MAKE_ENV} \
		${LINK.cc} -o textsuggest-server ${TEXTSUGGEST_SERVER_SRC}
.for processor in ${PROCESSORS}
	cd ${WRKBUILD}/textsuggest/processors/ && ${SETENV} ${MAKE_ENV} \
		${LINK.cc} -o ${processor} ${processor}.cpp
.endfor

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ui/textsuggest ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/server/textsuggest-server ${PREFIX}/bin
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/textsuggest
.for processor in ${PROCESSORS}
	${INSTALL_PROGRAM} ${WRKBUILD}/textsuggest/processors/${processor} \
		${PREFIX}/libexec/textsuggest/${processor}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/textsuggest
	${INSTALL_DATA_DIR} ${PREFIX}/share/textsuggest/dictionaries
	ln -s /usr/share/dict/words \
		${PREFIX}/share/textsuggest/dictionaries/English.txt

.include <bsd.port.mk>
