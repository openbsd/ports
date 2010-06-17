# $OpenBSD: Makefile,v 1.50 2010/06/17 09:57:55 fgsch Exp $

# no success building on other archs yet
ONLY_FOR_ARCHS =	amd64 i386 sparc64

COMMENT =		multi system emulator

DISTNAME =		qemu-0.12.4
PKGNAME =		${DISTNAME}p0
CATEGORIES =		emulators

HOMEPAGE =		http://www.qemu.org/

# GPLv2/LGPLv2/BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m ossaudio pthread util z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=qemu/}

BUILD_DEPENDS =		::textproc/texi2html

USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--disable-vnc-tls \
			--disable-curses \
			--disable-curl \
			--disable-bsd-user \
			--disable-guest-base \
			--extra-cflags=-fno-stack-protector

FLAVORS =		debug no_x11
FLAVOR ?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS +=	--disable-sdl
.else
LIB_DEPENDS =    	SDL::devel/sdl

USE_X11 =		Yes
WANTLIB +=		X11
.endif
.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS +=	--enable-debug
.endif

# Currently, the regression tests are utterly broken.
REGRESS_TARGET =	test

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/net.h ${WRKSRC}/qemu-options.hx
	@perl -pi -e 's|/dev/dsp|/dev/audio|g' ${WRKSRC}/audio/ossaudio.c

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qemu
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qemu
	@${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
	    ${PREFIX}/share/doc/qemu/README.OpenBSD
	@chown ${SHAREOWN}:${SHAREGRP} \
	    ${PREFIX}/share/doc/qemu/README.OpenBSD
	@${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup \
	    ${PREFIX}/share/examples/qemu
	@${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifdown \
	    ${PREFIX}/share/examples/qemu

.include <bsd.port.mk>
