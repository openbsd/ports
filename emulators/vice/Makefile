# $OpenBSD: Makefile,v 1.2 2015/09/12 10:01:25 ajacoutot Exp $

BROKEN-i386 =		platform_x86_runtime_cpu.c:203: error: 'asm' operand has impossible constraints

COMMENT =		versatile Commodore emulator

DISTNAME =		vice-2.4
REVISION =		0

CATEGORIES =		emulators

HOMEPAGE =		http://viceteam.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SDL SM X11 Xaw Xext Xmu Xpm Xrandr Xt Xv Xxf86vm
WANTLIB += c gif jpeg png m pthread readline stdc++ termcap usbhid
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vice-emu/}

LIB_DEPENDS =		devel/sdl \
			graphics/giflib \
			graphics/jpeg \
			graphics/png

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.68

CONFIGURE_ARGS +=	--without-oss \
			--without-pulse \
			--with-sdlsound \
			--disable-lame

# XXX broken with ffmpeg-20131216
CONFIGURE_ARGS +=	--disable-ffmpeg

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/vice.1

post-install:
	rm ${PREFIX}/lib/vice/doc/vice.info

.include <bsd.port.mk>
