# $OpenBSD: Makefile,v 1.16 2016/08/11 07:42:27 bentley Exp $

COMMENT-main =		highly accurate Game Boy Color emulator
COMMENT-qt =		highly accurate Game Boy Color emulator with GUI

REV =			571
V =			0.5.0.${REV}
DISTNAME =		gambatte_src-r${REV}
PKGNAME-main =		gambatte-$V
PKGNAME-qt =		gambatte-qt-$V
REVISION-main =		2
REVISION-qt =		1

MULTI_PACKAGES =	-main -qt

.include <bsd.port.arch.mk>

CATEGORIES =		emulators

HOMEPAGE =		http://gambatte.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB =	c m pthread stdc++ z
WANTLIB-main =	${cWANTLIB} SDL
WANTLIB-qt =	${cWANTLIB} GL QtCore QtGui QtOpenGL X11 Xext Xrandr Xv ossaudio usbhid Xi

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gambatte/}

MODULES =		devel/qmake lang/python x11/qt4
MODQMAKE_PROJECTS =	gambatte_qt
SEPARATE_BUILD =	No
CONFIGURE_STYLE =	qmake specific		# avoid qmake.port.mk add do-build

LIB_DEPENDS-main =	devel/sdl

TEST_DEPENDS =		graphics/png

MAKE_FILE =		${FILESDIR}/Makefile
CONFIGURE_ARGS =	CC="${CC}" \
			CXX="${CXX}" \
			LINK="${CXX}" \
			CFLAGS="${CFLAGS} -DHAVE_USBHID_H -DUSBHID_UCR_DATA -DUSBHID_NEW" \
			CXXFLAGS="${CXXFLAGS} -DHAVE_STDINT_H" \
			PYTHON="${MODPY_BIN}"

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			LINK="${CXX}" \
			CFLAGS="${CFLAGS} -DHAVE_USBHID_H -DUSBHID_UCR_DATA -DUSBHID_NEW" \
			CXXFLAGS="${CXXFLAGS} -DHAVE_STDINT_H" \
			PYTHON="${MODPY_BIN}"

post-build:
	${MODQMAKE_build}

do-install:
	${INSTALL_DATA} ${FILESDIR}/gambatte_sdl.6 \
		${FILESDIR}/gambatte_qt.6 ${PREFIX}/man/man6
	${INSTALL_PROGRAM} ${WRKDIST}/gambatte_sdl/gambatte_sdl \
		${WRKDIST}/gambatte_qt/bin/gambatte_qt ${PREFIX}/bin

.include <bsd.port.mk>
