# $OpenBSD: Makefile,v 1.11 2015/12/22 04:20:21 bentley Exp $

COMMENT-main =		highly accurate Game Boy Color emulator
COMMENT-qt =		highly accurate Game Boy Color emulator with GUI

REV =			571
V =			0.5.0.${REV}
DISTNAME =		gambatte_src-r${REV}
PKGNAME =		gambatte-$V
PKGNAME-qt =		gambatte-qt-$V
REVISION-main =		0

MULTI_PACKAGES =	-main -qt

.include <bsd.port.arch.mk>

CATEGORIES =		emulators

HOMEPAGE =		http://gambatte.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB =	c m pthread stdc++ z
WANTLIB-main =	${cWANTLIB} SDL
WANTLIB-qt =	${cWANTLIB} GL QtCore QtGui QtOpenGL X11 Xext Xrandr Xv ossaudio usbhid

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gambatte/}

MODULES =		lang/python
.if ${BUILD_PACKAGES:M-qt}
MODULES +=		x11/qt4
.endif
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

do-configure:
	cd ${WRKSRC}/gambatte_qt && qmake4 ${CONFIGURE_ARGS}

do-build:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKDIST} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET}
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKDIST}/gambatte_qt \
		${MAKE_FLAGS} -f Makefile ${ALL_TARGET}

do-install:
	${INSTALL_DATA} ${FILESDIR}/gambatte_sdl.6 \
		${FILESDIR}/gambatte_qt.6 ${PREFIX}/man/man6
	${INSTALL_PROGRAM} ${WRKDIST}/gambatte_sdl/gambatte_sdl \
		${WRKDIST}/gambatte_qt/bin/gambatte_qt ${PREFIX}/bin

.include <bsd.port.mk>
