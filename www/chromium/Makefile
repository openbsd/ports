# $OpenBSD: Makefile,v 1.62 2011/07/05 09:16:19 halex Exp $

ONLY_FOR_ARCHS=		i386 amd64

COMMENT=		Chromium browser

V=			12.0.742.112
DISTNAME=		chromium-${V}
REVISION=		0

CATEGORIES=		www

HOMEPAGE=		http://sightly.net/peter/openbsd/chromium/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

EXTRACT_SUFX=		.tar.bz2

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xss
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs xcb xml2
WANTLIB += z execinfo bz2 nss3 nssutil3 ssl3 smime3 softokn3 gconf-2
WANTLIB += GL Xxf86vm drm stdc++ xcb-render xcb-shm
WANTLIB += Xtst event xslt vpx kvm>=10.0 sndio speex
WANTLIB += cups gcrypt

MASTER_SITES=	http://blade2k.humppa.hu/distfiles/ \
		http://build.chromium.org/buildbot/official/ \
		ftp://rene-ladan.nl/pub/distfiles/

MODULES=	devel/gettext \
		lang/python

MODPY_RUNDEP=	No

RUN_DEPENDS=	sysutils/gamin,-server \
		devel/xdg-utils \
		devel/desktop-file-utils \
		x11/gtk+2,-cups \
		x11/gnome/icon-theme
BUILD_DEPENDS=	archivers/bzip2 \
		devel/gperf \
		devel/bison \
		devel/flex \
		devel/yasm \
		shells/bash \
		sysutils/flock
LIB_DEPENDS=	devel/libexecinfo \
		archivers/bzip2 \
		security/nss \
		devel/gconf2 \
		multimedia/libvpx \
		x11/gnome/libgnome-keyring \
		textproc/libxslt \
		x11/gtk+2 \
		audio/speex \
		print/cups

.include <bsd.own.mk>

# Set BUILDTYPE to Debug (or omit it) for a debug build
BUILDTYPE=	Release
MAKE_ENV=	BUILDTYPE=${BUILDTYPE} V=1

USE_GMAKE=	Yes

REGRESS_TARGET=	base_unittests

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

ALL_TARGET=	chrome

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

GYP_DEFS=	-Duse_system_bzip2=1 \
		-Duse_system_libevent=1 \
		-Duse_system_libjpeg=1 \
		-Duse_system_libpng=1 \
		-Duse_system_libxml=1 \
		-Duse_system_speex=1 \
		-Duse_system_sqlite=0 \
		-Duse_system_vpx=1 \
		-Duse_system_yasm=1 \
		-Duse_system_zlib=0 \
		-Ddisable_nacl=1 \
		-Ddisable_sse2=1 \
		-DOS=openbsd

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	${SUBST_CMD} ${WRKSRC}/build/common.gypi

# gyp_chromium generates all the Makefiles from gyp
do-configure:
	@cd ${WRKSRC} && \
	env -i ${CONFIGURE_ENV} ${MODPY_BIN} build/gyp_chromium -fmake --ignore-environment \
	${GYP_DEFS} \
	"--depth=${WRKSRC}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/chrome
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/chrome
	${INSTALL_SCRIPT} ${FILESDIR}/chrome ${PREFIX}/bin
	@perl -pi -e "s,TRUEPREFIX,${TRUEPREFIX},g" ${PREFIX}/bin/chrome
	${INSTALL_MAN} ${BUILDDIR}/chrome.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${BUILDDIR}/chrome.pak ${PREFIX}/chrome
	${INSTALL_DATA} ${BUILDDIR}/resources.pak ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/chrome/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/chrome/resources
.for f in ffmpegsumo_nolink libffmpegsumo.so mksnapshot protoc
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/chrome
.endfor
.for s in 16 22 24 32 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/chrome/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/chrome.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/chrome.desktop \
		${PREFIX}/share/applications/chrome.desktop

.include <bsd.port.mk>
