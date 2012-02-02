# $OpenBSD: Makefile,v 1.84 2012/02/02 22:07:33 sthen Exp $

ONLY_FOR_ARCHS=	amd64 i386 mips64 mips64el powerpc sparc sparc64

COMMENT=	multi system emulator

DISTNAME=	qemu-1.0
REVISION=	1
CATEGORIES=	emulators
MASTER_SITES=	http://wiki.qemu.org/download/ \
		http://comstyle.com/source/

HOMEPAGE=	http://www.qemu.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2, LGPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL SDL X11 c curl glib-2.0 gthread-2.0 jpeg m ncurses \
		png pthread util z

MODULES=	devel/gettext \
		lang/python
BUILD_DEPENDS=	textproc/texi2html
LIB_DEPENDS=	devel/glib2 \
		devel/sdl \
		graphics/jpeg \
		graphics/png \
		net/curl

MODPY_RUNDEP=	No

MAKE_ENV=	V=1
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

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
		--disable-vnc-tls

.if ${MACHINE_ARCH:Msparc}
CONFIGURE_ARGS+=--sparc_cpu=v7
.endif

FLAVORS=	debug
FLAVOR?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=--enable-debug
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup \
	    ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifdown \
	    ${PREFIX}/share/examples/qemu

.include <bsd.port.mk>
