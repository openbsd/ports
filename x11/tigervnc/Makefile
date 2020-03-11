# $OpenBSD: Makefile,v 1.3 2020/03/11 18:27:15 sthen Exp $

COMMENT=	high performance, multi-platform VNC client and server

GH_ACCOUNT=	TigerVNC
GH_PROJECT=	tigervnc
GH_TAGNAME=	v1.10.1
REVISION=	0

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} xorg-server-1.20.7.tar.bz2:0

CATEGORIES=	x11 net

HOMEPAGE=	https://tigervnc.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE SM X11 X11-xcb Xau Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xfont2 Xft Xinerama Xrandr
WANTLIB += Xrender Xtst Xxf86vm c drm expat ffi fltk fltk_images
WANTLIB += fontconfig fontenc freetype glapi gmp gnutls hogweed
WANTLIB += iconv idn2 intl jpeg kvm m nettle p11-kit pixman-1
WANTLIB += tasn1 unistring xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present
WANTLIB += xcb-sync xcb-xfixes xshmfence z

MASTER_SITES0=	https://www.x.org/releases/individual/xserver/

MODULES=	gnu \
		devel/cmake

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS=	-DMAN_DIR="${TRUEPREFIX}/man" \
		-DDOC_DIR="${TRUEPREFIX}/share/doc/tigervnc" \
		-DENABLE_PAM=OFF
CFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include
NO_TEST=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext \
		security/gnutls \
		x11/fltk
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16
PATCHORIG=	.orig.port

BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}/unix/xserver

AC_ENV=	CPPFLAGS="-I${X11BASE}/include/libdrm"

# upstream suggestions
AC_ARGS=	--with-pic \
		--without-dtrace \
		--disable-static \
		--disable-config-dbus \
		--disable-config-hal \
		--disable-config-udev \
		--disable-dmx \
		--disable-dri \
		--disable-dri2 \
		--disable-kdrive \
		--disable-xephyr \
		--disable-xinerama \
		--disable-xnest \
		--disable-xorg \
		--disable-xvfb \
		--disable-xwin \
		--enable-install-libxf86config \
		--enable-glx \
		--with-default-font-path="${X11BASE}/lib/X11/fonts/misc/,${X11BASE}/lib/X11/fonts/TTF/,${X11BASE}/lib/X11/fonts/OTF/,${X11BASE}/lib/X11/fonts/Type1/,${X11BASE}/lib/X11/fonts/100dpi/,${X11BASE}/lib/X11/fonts/75dpi/" \
		--with-fontdir=${X11BASE}/lib/X11/fonts \
		--with-xkb-path=${X11BASE}/share/X11/xkb \
		--with-xkb-output=/var/db/xkb \
		--with-xkb-bin-directory=${X11BASE}/bin \
		--with-serverconfig-path=${X11BASE}/lib \
		--with-dri-driver-path=${X11BASE}/lib/modules/dri

# needed to build here - xenocara has patched wscons
AC_ARGS+=	--disable-config-wscons
# various others from xenocara
AC_ARGS+=	--disable-input-thread \
		--disable-libdrm \
		--disable-install-setuid \
		--enable-xcsecurity --disable-xdm-auth-1

# standard from gnu.port.mk
AC_ARGS+=	--sysconfdir='${SYSCONFDIR}' \
		--mandir='${PREFIX}/man' \
		--infodir='${PREFIX}/info' \
		--localstatedir='${LOCALSTATEDIR}' \
		--disable-silent-rules

post-extract:
	cp -R ${WRKDIR}/xorg-server-*/* ${WRKDIST}/unix/xserver

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

# avoid conflict
post-install:
	# requires libnetwork.la, not generated ealier
	cd ${WRKBUILD}/unix/xserver; \
	    ${ENV} ${MAKE_ENV} ${MAKE_PROGRAM} all install V=1 \
	    TIGERVNC_SRCDIR=${WRKDIST} TIGERVNC_BUILDDIR=${WRKBUILD}

	rm -r ${PREFIX}/lib/xorg
	mv ${PREFIX}/bin/vncviewer{,.tigervnc}
	mv ${PREFIX}/man/man1/vncviewer{,.tigervnc}.1

.include <bsd.port.mk>
