# $OpenBSD: Makefile,v 1.170 2017/10/13 04:48:34 ajacoutot Exp $

USE_WXNEEDED=	Yes

ONLY_FOR_ARCHS=	aarch64 amd64 arm i386 powerpc sparc64

COMMENT=	multi system emulator

DISTNAME=	qemu-2.10.1
CATEGORIES=	emulators
MASTER_SITES=	http://wiki.qemu.org/download/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.qemu.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2, LGPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL2 X11 atk-1.0 bz2 c cairo cairo-gobject curl drm epoxy \
		fdt gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnutls \
		gobject-2.0 gthread-2.0 gtk-3 intl iscsi jpeg lzo2 m \
		ncursesw nettle nfs pango-1.0 pangocairo-1.0 pcre2-8 \
		pixman-1 png pthread-stubs ssh2 usb-1.0 util vte-2.91 z \
		${COMPILER_LIBCXX}

# Using TLS emulation layer
COMPILER =	gcc

MODULES=	lang/python


BUILD_DEPENDS=	devel/gettext-tools \
		textproc/texi2html
LIB_DEPENDS=	archivers/bzip2 \
		archivers/lzo2 \
		devel/dtc>=1.4.4 \
		devel/gettext \
		devel/glib2 \
		devel/libiscsi \
		devel/libnfs \
		devel/libusb1>=1.0.20 \
		devel/sdl2 \
		devel/vte3 \
		graphics/jpeg \
		graphics/png \
		net/curl \
		security/gnutls \
		security/libnettle \
		security/libssh2 \
		x11/gtk+3

MODPY_RUNDEP=	No

MAKE_ENV=	V=1
FAKE_FLAGS=	qemu_confdir=${PREFIX}/share/examples/qemu

EXTRA_CFLAGS=	-I${LOCALBASE}/include -I${X11BASE}/include
EXTRA_LDFLAGS=	-L${LOCALBASE}/lib -L${X11BASE}/lib

# until the system headers are fixed properly.
EXTRA_CFLAGS+=	-Wno-redundant-decls

EXTRA_CFLAGS+=	-DTIME_MAX=LLONG_MAX

USE_GMAKE=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--sysconfdir=${SYSCONFDIR} \
		--mandir=${PREFIX}/man \
		--python=${MODPY_BIN} \
		--smbd=${LOCALBASE}/sbin/smbd \
		--cc="${CC}" \
		--cxx="${CXX}" \
		--host-cc="${CC}" \
		--extra-cflags="${EXTRA_CFLAGS}" \
		--extra-ldflags="${EXTRA_LDFLAGS}" \
		--disable-bsd-user \
		--enable-curses \
		--disable-gcrypt \
		--disable-smartcard \
		--disable-snappy \
		--disable-spice \
		--disable-usb-redir \
		--disable-vnc-sasl

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup \
	    ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifdown \
	    ${PREFIX}/share/examples/qemu

.include <bsd.port.mk>
