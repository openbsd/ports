# $OpenBSD: mozilla.port.mk,v 1.69 2014/04/29 21:16:26 landry Exp $

SHARED_ONLY =	Yes
ONLY_FOR_ARCHS=	amd64 arm i386 powerpc sparc64
# gcc does ICE on alpha at some particular spots:
# thunderbird-24.0/comm-esr24/mozilla/js/src/vm/Debugger.cpp:3246
# firefox-24.0/mozilla-release/js/src/frontend/BytecodeEmitter.cpp:1488
# seamonkey-2.22/comm-release/mozilla/js/src/vm/Interpreter.cpp:743
# firefox-25.0/mozilla-release/js/src/builtin/MapObject.cpp:1119

DPB_PROPERTIES =	parallel

.for _lib in ${MOZILLA_LIBS}
SHARED_LIBS +=	${_lib}	${SO_VERSION}
.endfor

PKGNAME ?=	${MOZILLA_PROJECT}-${MOZILLA_VERSION:S/b/beta/}

MAINTAINER ?=	Landry Breuil <landry@openbsd.org>

MOZILLA_DIST ?=	${MOZILLA_PROJECT}
MOZILLA_DIST_VERSION ?=	${MOZILLA_VERSION}

HOMEPAGE ?=	http://www.mozilla.org/projects/${MOZILLA_DIST}

# first is the CDN and only has last releases
# ftp.m.o has all the betas/candidate builds but should only be used as fallback
MASTER_SITES ?=	http://releases.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/releases/${MOZILLA_DIST_VERSION}/source/ \
		https://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/releases/${MOZILLA_DIST_VERSION}/source/ \
		ftp://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/releases/${MOZILLA_DIST_VERSION}/source/
DISTNAME ?=	${MOZILLA_DIST}-${MOZILLA_DIST_VERSION}.source
EXTRACT_SUFX ?=	.tar.bz2
DIST_SUBDIR ?=	mozilla

MODMOZ_RUN_DEPENDS =	devel/desktop-file-utils
MODMOZ_BUILD_DEPENDS =	devel/libIDL \
			archivers/gtar \
			archivers/unzip \
			archivers/zip>=2.3

MODMOZ_LIB_DEPENDS =	x11/gtk+2 \
			textproc/hunspell \
			devel/nspr>=4.10.3 \
			security/nss>=3.16

# bug #736961
SEPARATE_BUILD =	Yes

# needed for webm
.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
MODMOZ_BUILD_DEPENDS +=	devel/yasm
.endif

MODMOZ_WANTLIB +=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender Xt atk-1.0 c cairo \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		plc4 plds4 pthread event kvm sqlite3>=27 \
		smime3 sndio nssutil3 ssl3 stdc++ z hunspell-1.3

# hack to build against systemwide sqlite3 (# 546162)
CONFIGURE_ENV +=	ac_cv_sqlite_secure_delete=yes

# --no-keep-memory avoids OOM when linking libxul
# --relax avoids relocation overflow on ppc, needed since sm 2.7b, tb 10.0b, fx 15.0b
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV +=	LDFLAGS="-Wl,--no-keep-memory -Wl,--relax"
.else
CONFIGURE_ENV +=	LDFLAGS="-Wl,--no-keep-memory"
.endif

WANTLIB +=	${MODMOZ_WANTLIB}
BUILD_DEPENDS +=${MODMOZ_BUILD_DEPENDS}
LIB_DEPENDS +=	${MODMOZ_LIB_DEPENDS}
RUN_DEPENDS +=	${MODMOZ_RUN_DEPENDS}

USE_GMAKE ?=	Yes

# no --with-system-jpeg starting with fx 18, requires libjpeg-turbo because of bug 791305
# no --with-system-cairo, too much gfx problems because of version mismatch
# no --with-system-ffi, needs 3.0.10 when not using gcc
# no --with-system-png, apng support not bundled in

AUTOCONF_VERSION =	2.13
CONFIGURE_ARGS +=	--with-system-zlib=/usr	\
		--with-system-libevent=/usr/	\
		--with-system-bz2=${LOCALBASE}	\
		--with-system-nspr		\
		--with-system-nss		\
		--enable-system-hunspell	\
		--enable-system-sqlite		\
		--enable-official-branding	\
		--enable-gio			\
		--disable-gconf			\
		--disable-necko-wifi		\
		--disable-optimize		\
		--disable-tests			\
		--disable-updater		\
		--disable-dbus

FLAVORS +=	debug
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--enable-debug \
			--enable-profiling \
			--enable-debug-symbols=yes \
			--disable-install-strip
INSTALL_STRIP =
.endif

# from browser/config/mozconfig
CONFIGURE_ARGS +=--enable-application=${MOZILLA_CODENAME}

.if ${MOZILLA_PROJECT} == "firefox" || \
	${MOZILLA_PROJECT} == "xulrunner"
WRKDIST ?=	${WRKDIR}/mozilla-${MOZILLA_BRANCH}
.else
WRKDIST ?=	${WRKDIR}/comm-${MOZILLA_BRANCH}
_MOZDIR =	mozilla
.endif

# needed for PLIST
MOZILLA_VER =	${MOZILLA_VERSION:C/b.$//:C/esr$//}
SUBST_VARS +=	MOZILLA_PROJECT MOZILLA_VER MOZILLA_VERSION

MAKE_ENV +=	MOZILLA_OFFICIAL=1 \
		SHELL=/bin/sh \
		SO_VERSION="${SO_VERSION}"

CONFIGURE_ENV +=	${MAKE_ENV}

pre-configure:
.for d in ${MOZILLA_AUTOCONF_DIRS}
	cd ${WRKSRC}/${d} && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
.endfor
.for f in ${MOZILLA_SUBST_FILES}
	${SUBST_CMD} ${WRKSRC}/${f}
.endfor
