# $OpenBSD: Makefile,v 1.23 2019/10/17 13:29:53 cwen Exp $

COMMENT-main =		highly accurate Game Boy Color emulator
COMMENT-qt =		highly accurate Game Boy Color emulator with GUI

REV =			571
V =			0.5.0.${REV}
DISTNAME =		gambatte_src-r${REV}
PKGNAME-main =		gambatte-$V
PKGNAME-qt =		gambatte-qt-$V
REVISION-main =		4
REVISION-qt =		4

MULTI_PACKAGES =	-main -qt

.include <bsd.port.arch.mk>

CATEGORIES =		emulators

HOMEPAGE =		http://gambatte.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2 only
PERMIT_PACKAGE =	Yes

cWANTLIB =	c m pthread ${COMPILER_LIBCXX} z
WANTLIB-main +=	${cWANTLIB} SDL
WANTLIB-qt +=	${cWANTLIB} GL QtCore QtGui QtOpenGL X11 Xext Xrandr Xv ossaudio usbhid Xi
WANTLIB-qt +=	ICE SM Xinerama Xrender fontconfig freetype

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gambatte/}

MODULES =		devel/qmake lang/python x11/qt4
MODQMAKE_PROJECTS =	gambatte_qt
SEPARATE_BUILD =	No
CONFIGURE_STYLE =	qmake specific		# avoid qmake.port.mk add do-build

LIB_DEPENDS-main =	${MODGCC4_CPPLIBDEP} \
			devel/sdl

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
