# $OpenBSD: Makefile,v 1.55 2010/10/24 21:17:48 ajacoutot Exp $

# no success building on other archs yet
ONLY_FOR_ARCHS =	i386 amd64 sparc64

COMMENT =		multi system emulator

DISTNAME =		qemu-0.12.5
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
USE_GROFF =	Yes

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
LIB_DEPENDS =    	::devel/sdl

WANTLIB +=		SDL X11
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
