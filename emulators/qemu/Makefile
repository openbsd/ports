# $OpenBSD: Makefile,v 1.103 2013/04/14 20:28:56 brad Exp $

ONLY_FOR_ARCHS=	amd64 i386 powerpc sparc64

COMMENT=	multi system emulator

DISTNAME=	qemu-1.4.0
REVISION=	0
CATEGORIES=	emulators
MASTER_SITES=	http://wiki.qemu.org/download/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.qemu.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2, LGPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	GL SDL X11 c curl glib-2.0 gnutls gthread-2.0 jpeg m ncurses \
		pixman-1 png pthread pthread-stubs util z

MODULES=	devel/gettext \
		lang/python
BUILD_DEPENDS=	textproc/texi2html
LIB_DEPENDS=	devel/glib2 \
		devel/sdl \
		graphics/jpeg \
		graphics/png \
		net/curl \
		security/gnutls

MODPY_RUNDEP=	No

MAKE_ENV=	V=1
FAKE_FLAGS=	qemu_confdir=${PREFIX}/share/examples/qemu

EXTRA_CFLAGS=	-I${LOCALBASE}/include -I${X11BASE}/include
EXTRA_LDFLAGS=	-L${LOCALBASE}/lib -L${X11BASE}/lib

# until the system headers are fixed properly.
EXTRA_CFLAGS+=	-Wno-redundant-decls

EXTRA_CFLAGS+=	-DTIME_MAX=INT_MAX

VMEM_WARNING=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--sysconfdir=${SYSCONFDIR} \
		--mandir=${PREFIX}/man \
		--python=${MODPY_BIN} \
		--smbd=${LOCALBASE}/libexec/smbd \
		--cc="${CC}" \
		--host-cc="${CC}" \
		--extra-cflags="${EXTRA_CFLAGS}" \
		--extra-ldflags="${EXTRA_LDFLAGS}" \
		--audio-drv-list=sdl \
		--disable-bsd-user \
		--disable-libiscsi \
		--disable-smartcard-nss \
		--disable-spice \
		--disable-uuid \
		--disable-usb-redir \
		--disable-vnc-sasl \
		--with-coroutine=sigaltstack

FLAVORS=	debug
FLAVOR?=

.if ${FLAVOR:Mdebug}
CFLAGS+=	-O0
CONFIGURE_ARGS+=--enable-debug
INSTALL_STRIP=
.else
CONFIGURE_ARGS+=--disable-debug-info
.endif

TEST_TARGET=	check

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup \
	    ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifdown \
	    ${PREFIX}/share/examples/qemu

.include <bsd.port.mk>
