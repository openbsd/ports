# $OpenBSD: Makefile,v 1.9 2014/03/10 04:18:25 bentley Exp $

COMMENT =		highly accurate Game Boy Color emulator

REV =			550
DISTNAME =		gambatte_src-r${REV}
PKGNAME =		gambatte-0.5.0.${REV}
REVISION =		0

CATEGORIES =		emulators

HOMEPAGE =		http://gambatte.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread stdc++ z SDL

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gambatte/}

MODULES =		devel/scons \
			lang/python
LIB_DEPENDS =		devel/sdl

TEST_DEPENDS =	graphics/png

pre-configure:
	${SUBST_CMD} ${WRKDIST}/testrunner/SConstruct

do-build:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKDIST}/libgambatte \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKDIST}/gambatte_sdl \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/gambatte_sdl/gambatte_sdl ${PREFIX}/bin
	${INSTALL_DATA} ${FILESDIR}/gambatte_sdl.6 ${PREFIX}/man/man6

do-test:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKDIST}/testrunner \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}
	cd ${WRKDIST}/testrunner && \
	${MODPY_BIN} qdgbas.py hwtests/*.asm hwtests/*/*.asm \
		hwtests/*/*/*.asm hwtests/*/*/*/*.asm && ./run_tests.sh

.include <bsd.port.mk>
