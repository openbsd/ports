# $OpenBSD: Makefile,v 1.3 2010/12/08 20:13:14 landry Exp $

COMMENT =		highly accurate Game Boy Color emulator

V =			0.4.1
DISTNAME =		gambatte_src-${V}
PKGNAME =		gambatte-${V}

CATEGORIES =		emulators

HOMEPAGE =		http://gambatte.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c m pthread stdc++ z SDL

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gambatte/}

MODULES =		devel/scons
LIB_DEPENDS =		devel/sdl

NO_REGRESS =		Yes

do-build:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKDIST}/libgambatte \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKDIST}/gambatte_sdl \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/gambatte_sdl/gambatte_sdl ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/gambatte_sdl/man/gambatte_sdl.6 \
		${PREFIX}/man/man6

.include <bsd.port.mk>
