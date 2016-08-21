# $OpenBSD: Makefile,v 1.150 2016/08/21 12:04:23 ajacoutot Exp $

ONLY_FOR_ARCHS=	amd64 i386 powerpc sparc64

COMMENT=	multi system emulator

DISTNAME=	qemu-2.6.1
CATEGORIES=	emulators
MASTER_SITES=	http://wiki.qemu.org/download/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.qemu.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2, LGPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0 bz2 c cairo curl drm epoxy fdt \
		fontconfig freetype gbm gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 gnutls gobject-2.0 gthread-2.0 gtk-x11-2.0 intl \
		iscsi jpeg lzo2 m ncurses nettle nfs pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread pthread-stubs ssh2 \
		usb-1.0 util uuid vte z

# Using gcc4 for the TLS emulation layer
MODULES=	lang/python \
		gcc4

MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

BUILD_DEPENDS=	devel/gettext-tools \
		textproc/texi2html
LIB_DEPENDS=	archivers/bzip2 \
		archivers/lzo2 \
		devel/dtc \
		devel/gettext \
		devel/glib2 \
		devel/libiscsi \
		devel/libnfs \
		devel/libusb1>=1.0.20 \
		devel/sdl \
		devel/vte \
		graphics/jpeg \
		graphics/png \
		net/curl \
		security/gnutls \
		security/libnettle \
		security/libssh2 \
		sysutils/e2fsprogs \
		x11/gtk+2

MODPY_RUNDEP=	No

MAKE_ENV=	V=1
FAKE_FLAGS=	qemu_confdir=${PREFIX}/share/examples/qemu

EXTRA_CFLAGS=	-I${LOCALBASE}/include -I${X11BASE}/include
EXTRA_LDFLAGS=	-L${LOCALBASE}/lib -L${X11BASE}/lib -Wl,-z,wxneeded

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
		--disable-gcrypt \
		--disable-smartcard \
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
