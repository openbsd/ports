COMMENT =	Atari 8-bit computer systems and 5200 game console emulator

V =		5.0.0
DISTNAME =	atari800-${V}-src
PKGNAME =	${DISTNAME:S/-src//}
EXTRACT_SUFX=	.tgz

CATEGORIES =	emulators

HOMEPAGE =	https://atari800.github.io/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL c curses m mp3lame pthread readline z

SITES =		https://github.com/atari800/atari800/releases/download/ATARI800_${V:S/./_/g}/

LIB_DEPENDS =	audio/lame \
		devel/sdl

WRKDIST =	${WRKDIR}/atari800-${V}

CONFIGURE_STYLE = gnu

# Prevent ossaudio from being linked even when SDL audio is used
CONFIGURE_ENV += ac_cv_lib_ossaudio__oss_ioctl=no

CONFIGURE_ARGS = --disable-rserial \
		 --with-sound=sdl

USE_GMAKE =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/atari800 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/atari800.man ${PREFIX}/man/man1/atari800.1

.include <bsd.port.mk>
