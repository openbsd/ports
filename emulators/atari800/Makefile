# $OpenBSD: Makefile,v 1.2 2018/01/30 09:48:15 fcambus Exp $

COMMENT =	Atari 8-bit computer systems and 5200 game console emulator

DISTNAME =	atari800-3.1.0
REVISION =	0

CATEGORIES =	emulators

HOMEPAGE =	https://atari800.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL c m pthread readline termcap z

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
