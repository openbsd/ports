# $OpenBSD: Makefile,v 1.78 2011/10/19 08:12:06 sthen Exp $

# no success building on other archs yet
ONLY_FOR_ARCHS =	amd64 arm i386 mips64 mips64el powerpc sparc sparc64

COMMENT =		multi system emulator

DISTNAME =		qemu-0.15.1
REVISION=		0
CATEGORIES =		emulators
MASTER_SITES =		http://wiki.qemu.org/download/ \
			${MASTER_SITE_SAVANNAH:=qemu/}

HOMEPAGE =		http://www.qemu.org/

MAINTAINER=		Brad Smith <brad@comstyle.com>

# GPLv2, LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c curl jpeg m ncurses ossaudio png pthread util z

BUILD_DEPENDS =		textproc/texi2html
LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			net/curl

MAKE_ENV =		V=1
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples

EXTRA_CFLAGS=		-I${LOCALBASE}/include
EXTRA_LDFLAGS=		-L${LOCALBASE}/lib

VMEM_WARNING =		Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--sysconfdir=${SYSCONFDIR} \
			--mandir=${PREFIX}/man \
			--smbd=${LOCALBASE}/libexec/smbd \
			--cc="${CC}" \
			--host-cc="${CC}" \
			--extra-cflags="${EXTRA_CFLAGS}" \
			--extra-ldflags="${EXTRA_LDFLAGS}" \
			--disable-guest-agent \
			--disable-smartcard-nss \
			--disable-spice \
			--disable-uuid \
			--disable-usb-redir \
			--disable-vnc-sasl \
			--disable-vnc-tls

.if ${MACHINE_ARCH:Msparc}
CONFIGURE_ARGS +=	--sparc_cpu=v7
.endif

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Msparc64}
PKG_ARGS +=		-Dbsduser=1
.else
CONFIGURE_ARGS +=	--disable-bsd-user
PKG_ARGS +=		-Dbsduser=0
.endif

FLAVORS =		debug no_x11
FLAVOR ?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS +=	--disable-sdl --disable-opengl
.else
WANTLIB +=		GL SDL X11

LIB_DEPENDS +=		devel/sdl

EXTRA_CFLAGS +=		-I${X11BASE}/include
EXTRA_LDFLAGS +=	-L${X11BASE}/lib
.endif

# until the system headers are fixed properly.
EXTRA_CFLAGS +=		-Wno-redundant-decls

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS +=	--enable-debug
.endif

# Currently, the regression tests are utterly broken.
REGRESS_TARGET =	test

pre-configure:
	@perl -pi -e 's|/dev/dsp|/dev/audio|g' ${WRKSRC}/audio/ossaudio.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup \
	    ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifdown \
	    ${PREFIX}/share/examples/qemu

.include <bsd.port.mk>
