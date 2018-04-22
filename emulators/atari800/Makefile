# $OpenBSD: Makefile,v 1.3 2018/04/22 11:23:28 fcambus Exp $

COMMENT =	Atari 8-bit computer systems and 5200 game console emulator

DISTNAME =	atari800-4.0.0

CATEGORIES =	emulators

HOMEPAGE =	https://atari800.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL c curses m pthread readline z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=atari800/}

LIB_DEPENDS =	devel/sdl

WRKSRC =	${WRKDIST}/src

CONFIGURE_STYLE = gnu

# Prevent ossaudio from being linked even when SDL audio is used
CONFIGURE_ENV += ac_cv_lib_ossaudio__oss_ioctl=no

CONFIGURE_ARGS = --with-sound=sdl

USE_GMAKE =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/atari800 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/atari800.man ${PREFIX}/man/man1/atari800.1

.include <bsd.port.mk>
