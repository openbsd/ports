# $OpenBSD: Makefile,v 1.216 2021/09/19 10:19:31 sthen Exp $

ONLY_FOR_ARCHS=	aarch64 amd64 arm i386 powerpc powerpc64 riscv64 sparc64
DPB_PROPERTIES=	parallel

COMMENT-main=	multi system emulator
COMMENT-ga=	QEMU guest agent

VERSION=	6.1.0
DISTNAME=	qemu-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-ga=	qemu-ga-${VERSION}
REVISION-main=	1
CATEGORIES=	emulators
MASTER_SITES=	https://download.qemu.org/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.qemu.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2, LGPLv2 and BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c glib-2.0 pthread
WANTLIB-main=	${COMPILER_LIBCXX} ${WANTLIB} SDL2 X11 bz2 cairo capstone curl \
		curses epoxy fdt gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 gnutls \
		gobject-2.0 gtk-3 iconv intl iscsi jpeg lzo2 m nfs pixman-1 \
		png sndio ssh usb-1.0 util vte-2.91 xkbcommon z zstd
WANTLIB-ga=	${WANTLIB}

MULTI_PACKAGES=	-main -ga

# Using TLS emulation layer
COMPILER=	base-clang ports-gcc

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/ninja \
		shells/bash \
		textproc/py-sphinx${MODPY_FLAVOR}>=4.0.2 \
		textproc/py-sphinx_rtd_theme${MODPY_FLAVOR}

RUN_DEPENDS-main=	${BUILD_PKGPATH}-ga
LIB_DEPENDS=	devel/glib2
LIB_DEPENDS-main= ${LIB_DEPENDS} \
		archivers/bzip2 \
		archivers/lzo2 \
		archivers/zstd \
		converters/libiconv \
		devel/capstone/main \
		devel/dtc \
		devel/gettext,-runtime \
		devel/libiscsi \
		devel/libnfs \
		devel/libusb1 \
		devel/sdl2 \
		devel/vte3 \
		graphics/jpeg \
		graphics/png \
		net/curl \
		security/gnutls \
		security/libssh \
		x11/gtk+3 \
		x11/xkbcommon
LIB_DEPENDS-ga=	${LIB_DEPENDS}

MAKE_ENV=	V=1
FAKE_FLAGS=	qemu_confdir=${PREFIX}/share/examples/qemu

CFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib

# until the system headers are fixed properly.
CFLAGS+=	-Wno-redundant-decls

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}"
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--sysconfdir=${SYSCONFDIR} \
		--mandir=${PREFIX}/man \
		--python=${MODPY_BIN} \
		--smbd=${LOCALBASE}/sbin/smbd \
		--cc="${CC}" \
		--cxx="${CXX}" \
		--host-cc="${CC}" \
		--disable-bsd-user \
		--enable-capstone=system \
		--disable-auth-pam \
		--disable-sdl-image \
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

# XXX Optimizer bug, using -O2 causes segfaults, -O1 linking errors
.if ${MACHINE_ARCH:Mpowerpc}
CFLAGS+=	-O0
.endif

.include <bsd.port.arch.mk>

# Only lld has --dynamic-list
.if ${PROPERTIES:Mlld}
WANTLIB-main+=	gmodule-2.0
PKG_ARGS+=	-Dplugins=1
.else
PKG_ARGS+=	-Dplugins=0
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup \
	    ${PREFIX}/share/examples/qemu
	${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifdown \
	    ${PREFIX}/share/examples/qemu

.include <bsd.port.mk>
