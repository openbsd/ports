COMMENT=	high performance, multi-platform VNC client and server

GH_ACCOUNT=	TigerVNC
GH_PROJECT=	tigervnc
GH_TAGNAME=	v1.12.0
REVISION=	0

# update the post-patch target if moving to a new major branch of xorg-server
# there's no patchset in tigervnc for xorg-server-21.1.1.tar.xz:0 yet
DISTFILES=	${GH_DISTFILE} \
		xorg-server-1.20.13.tar.xz:0

CATEGORIES=	x11 net
EPOCH=		0

HOMEPAGE=	https://tigervnc.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL ICE SM X11 Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xfont2 Xft Xi Xinerama Xrandr Xrender Xtst c fltk fltk_images
WANTLIB += fontconfig fontenc freetype gmp gnutls hogweed iconv
WANTLIB += idn2 intl jpeg kvm m nettle p11-kit pixman-1 tasn1
WANTLIB += unistring xcb xshmfence z

MASTER_SITES0=	https://www.x.org/releases/individual/xserver/

# the vncserver script in 1.11.0+ is no longer useful for us (systemd/pam
# dependencies) so fetch an old working one from the v1.10.1 tag.
SCRIPTV=	1.10.1
MASTER_SITES1=	https://raw.githubusercontent.com/TigerVNC/tigervnc/v${SCRIPTV}/unix/
EXTRACT_ONLY=	${GH_DISTFILE} xorg-server-1.20.13.tar.xz
DISTFILES+=	tigervnc-vncserver-${SCRIPTV}.pl{vncserver}:1 \
		tigervnc-vncserver-${SCRIPTV}.man{vncserver.man}:1

# main parts use cmake, Xvnc uses autoconf
# Xvnc requires files generated in the cmake build stage that aren't
# installed, so can't be done as a separate port
MODULES=	gnu \
		devel/cmake

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS=	-DMAN_DIR="${TRUEPREFIX}/man" \
		-DDOC_DIR="${TRUEPREFIX}/share/doc/tigervnc" \
		-DCMAKE_INSTALL_FULL_SYSCONFDIR="${TRUEPREFIX}/share/examples/tigervnc" \
		-DINSTALL_SYSTEMD_UNITS=OFF
CFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include
NO_TEST=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime \
		security/gnutls \
		x11/fltk
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
PATCHORIG=	.orig.port

BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}/unix/xserver

AC_ENV=		CPPFLAGS="-I${X11BASE}/include/libdrm"

# upstream suggestions from BUILDING.txt (please compare on updates,
# keep the same order as upstream, and to ease comparison do include
# flags which now show as "WARNING: unrecognized options")
AC_ARGS+=	--with-pic \
		--without-dtrace \
		--disable-static \
		--disable-dri \
		--disable-xinerama \
		--disable-xvfb \
		--disable-xnest \
		--disable-xorg \
		--disable-dmx \
		--disable-xwin \
		--disable-xephyr \
		--disable-kdrive \
		--disable-config-dbus \
		--disable-config-hal \
		--disable-config-udev \
		--disable-dri2 \
		--enable-install-libxf86config \
		--enable-glx

AC_ARGS+=	--disable-xwayland

# suggestions from BUILDING.txt adapted to xenocara
AC_ARGS+=	--with-default-font-path="${X11BASE}/lib/X11/fonts/misc/,${X11BASE}/lib/X11/fonts/TTF/,${X11BASE}/lib/X11/fonts/OTF/,${X11BASE}/lib/X11/fonts/Type1/,${X11BASE}/lib/X11/fonts/100dpi/,${X11BASE}/lib/X11/fonts/75dpi/" \
		--with-fontdir=${X11BASE}/lib/X11/fonts \
		--with-xkb-path=${X11BASE}/share/X11/xkb \
		--with-xkb-output=/var/db/xkb \
		--with-xkb-bin-directory=${X11BASE}/bin \
		--with-serverconfig-path=${X11BASE}/lib \
		--with-dri-driver-path=${X11BASE}/lib/modules/dri

# needed to build here - xenocara has patched wscons
AC_ARGS+=	--disable-config-wscons
# various others from xenocara/xserver/Makefile.bsd-wrapper
AC_ARGS+=	--disable-dri3 \
		--disable-input-thread \
		--disable-libdrm \
		--disable-install-setuid \
		--enable-xcsecurity \
		--disable-xdm-auth-1

# standard from gnu.port.mk
AC_ARGS+=	--sysconfdir='${SYSCONFDIR}' \
		--mandir='${PREFIX}/man' \
		--infodir='${PREFIX}/info' \
		--localstatedir='${LOCALSTATEDIR}' \
		--disable-silent-rules

post-extract:
	cp -R ${WRKDIR}/xorg-server-*/* ${WRKDIST}/unix/xserver
	cp ${FULLDISTDIR}/tigervnc-vncserver-${SCRIPTV}.pl ${WRKSRC}/vncserver
	cp ${FULLDISTDIR}/tigervnc-vncserver-${SCRIPTV}.man ${WRKSRC}/vncserver.man

post-patch:
	patch -d ${WRKDIST}/unix/xserver/ -p1 < ${WRKDIST}/unix/xserver120.patch
	cd ${WRKDIST}/unix/xserver; ${AUTOCONF_ENV} autoreconf -fiv -I ${X11BASE}/share/aclocal

post-configure:
	mkdir -p ${WRKBUILD}/unix/xserver
	cd ${WRKBUILD}/unix/xserver && ${SETENV} \
	    LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
	    CC="${CC}" CFLAGS="${CFLAGS}" \
	    CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	    ${CONFIGURE_ENV} ${AC_ENV} \
	    sh ${WRKSRC}/unix/xserver/configure ${AC_ARGS}

post-install:
	# this is really a build stage, but it requires libnetwork.la which is
	# generated in the install stage of the cmake part of the build
	cd ${WRKBUILD}/unix/xserver; \
	    env ${MAKE_ENV} ${MAKE_PROGRAM} all install V=1 \
	    TIGERVNC_SRCDIR=${WRKDIST} TIGERVNC_BUILDDIR=${WRKBUILD}

	rm -rf ${PREFIX}/lib/xorg
	${INSTALL_SCRIPT} ${WRKSRC}/vncserver ${PREFIX}/bin/vncserver
	${INSTALL_DATA} ${WRKSRC}/vncserver.man ${PREFIX}/man/man1/vncserver.1

.include <bsd.port.mk>
