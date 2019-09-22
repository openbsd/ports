# $OpenBSD: mozilla.port.mk,v 1.127 2019/09/22 17:19:06 sthen Exp $

# ppc: firefox-esr/thunderbird xpcshell segfaults during startup compilation
# ppc: seamonkey/firefox - failure to link for atomic ops on 64 bits
# gcc does ICE on alpha at some particular spots:
# thunderbird-24.0/comm-esr24/mozilla/js/src/vm/Debugger.cpp:3246
# firefox-24.0/mozilla-release/js/src/frontend/BytecodeEmitter.cpp:1488
# seamonkey-2.22/comm-release/mozilla/js/src/vm/Interpreter.cpp:743
# firefox-25.0/mozilla-release/js/src/builtin/MapObject.cpp:1119

.if ${MACHINE_ARCH} == "i386"
MAKE_ENV +=		RUSTFLAGS="-C target-cpu=pentium4 --cfg target_feature=\"sse2\""
# reduce build memory usage:
CONFIGURE_ARGS +=	--disable-debug-symbols
DPB_PROPERTIES +=	lonesome
.else
DPB_PROPERTIES +=	parallel
.endif

.for _lib in ${MOZILLA_LIBS}
SHARED_LIBS +=	${_lib}	${SO_VERSION}
.endfor

PKGNAME ?=	${MOZILLA_PROJECT}-${MOZILLA_VERSION:S/b/beta/}

MAINTAINER ?=	Landry Breuil <landry@openbsd.org>

MOZILLA_DIST ?=	${MOZILLA_PROJECT}
MOZILLA_DIST_VERSION ?=	${MOZILLA_VERSION:C/rc.//}

.if ${MOZILLA_VERSION:M*rc?}
MASTER_SITES ?=	https://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/candidates/${MOZILLA_DIST_VERSION}-candidates/build${MOZILLA_VERSION:C/.*(.)/\1/}/source/
# first is the CDN and only has last releases
# ftp.m.o has all the betas/candidate builds but should only be used as fallback
.else
MASTER_SITES ?=	https://releases.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/releases/${MOZILLA_DIST_VERSION}/source/ \
		https://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/releases/${MOZILLA_DIST_VERSION}/source/
.endif

.if defined(MOZILLA_COMMIT) && defined(MOZILLA_BRANCH)
DISTNAME =	${MOZILLA_DIST}-${MOZILLA_DIST_VERSION}
DISTFILES ?=	${MOZILLA_DIST}-${MOZILLA_DIST_VERSION}${EXTRACT_SUFX}{${MOZILLA_COMMIT}${EXTRACT_SUFX}}
WRKDIST =	${WRKDIR}/mozilla-${MOZILLA_BRANCH}-${MOZILLA_COMMIT}
MASTER_SITES ?=	https://hg.mozilla.org/releases/mozilla-${MOZILLA_BRANCH}/archive/
EXTRACT_SUFX =	.tar.bz2
MODMOZILLA_pre-configure+= \
	cp ${WRKSRC}/${CONFIGURE_SCRIPT}.in ${WRKSRC}/${CONFIGURE_SCRIPT}; \
	cp ${WRKSRC}/js/src/${CONFIGURE_SCRIPT}.in ${WRKSRC}/js/src/${CONFIGURE_SCRIPT}; \
	chmod +x ${WRKSRC}/${CONFIGURE_SCRIPT}
.endif

DISTNAME ?=	${MOZILLA_DIST}-${MOZILLA_DIST_VERSION}.source
EXTRACT_SUFX ?=	.tar.xz
DIST_SUBDIR ?=	mozilla

MODMOZ_RUN_DEPENDS =	devel/desktop-file-utils
# autoconf-2.13 isnt a real dependency since a while, but configure still checks for it
MODMOZ_BUILD_DEPENDS =	devel/autoconf/2.13 \
			archivers/gtar \
			archivers/unzip \
			archivers/zip>=2.3

.if !defined(MOZILLA_USE_BUNDLED_NSS)
MODMOZ_LIB_DEPENDS +=	security/nss>=3.45
MODMOZ_WANTLIB +=	nss3 nssutil3 smime3 ssl3
CONFIGURE_ARGS +=	--with-system-nss
.endif

.if !defined(MOZILLA_USE_BUNDLED_NSPR)
MODMOZ_LIB_DEPENDS +=	devel/nspr>=4.21
MODMOZ_WANTLIB +=	nspr4 plc4 plds4
CONFIGURE_ARGS +=	--with-system-nspr
.endif

.if !defined(MOZILLA_USE_BUNDLED_LIBEVENT)
MODMOZ_WANTLIB +=	event
CONFIGURE_ARGS +=	--with-system-libevent=/usr/
.endif

.if !defined(MOZILLA_USE_BUNDLED_ICU)
MODMOZ_LIB_DEPENDS +=	textproc/icu4c
MODMOZ_WANTLIB +=	icudata icui18n icuuc
CONFIGURE_ARGS +=	--with-system-icu
.endif

.if !defined(MOZILLA_USE_BUNDLED_HUNSPELL)
MODMOZ_LIB_DEPENDS +=	textproc/hunspell>=1.6
MODMOZ_WANTLIB +=	hunspell-1.6
CONFIGURE_ARGS +=	--with-system-hunspell
.endif

.if !defined(MOZILLA_USE_BUNDLED_SQLITE)
MODMOZ_WANTLIB +=	sqlite3
MODMOZ_LIB_DEPENDS +=	databases/sqlite3>=3.28
CONFIGURE_ARGS +=	--enable-system-sqlite
# hack to build against systemwide sqlite3 (# 546162)
CONFIGURE_ENV +=	ac_cv_sqlite_secure_delete=yes
.endif

# bug #736961
SEPARATE_BUILD =	Yes

# needed for webm
.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
MODMOZ_BUILD_DEPENDS +=	devel/yasm
.endif

MODMOZ_WANTLIB +=	X11 Xext Xrender Xt atk-1.0 c cairo \
		fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gobject-2.0 gthread-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pthread sndio ${LIBCXX} z

# --no-keep-memory avoids OOM when linking libxul
CONFIGURE_ENV +=	LDFLAGS="-Wl,--no-keep-memory"

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
		--with-system-bz2=${LOCALBASE}	\
		--enable-official-branding	\
		--disable-gconf			\
		--disable-necko-wifi		\
		--disable-optimize		\
		--disable-tests			\
		--disable-updater		\
		--disable-dbus

FLAVORS +=	debug
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--enable-debug-symbols=-ggdb1 \
			--disable-install-strip
INSTALL_STRIP =
.endif

.if !defined(MOZILLA_USE_BUNDLED_CAIRO)
# https://bugzilla.mozilla.org/show_bug.cgi?id=983843
CONFIGURE_ARGS +=	--with-system-cairo
.endif

.if defined(MOZILLA_USE_GTK3)
CONFIGURE_ARGS +=	--enable-default-toolkit=cairo-gtk3
MODMOZ_LIB_DEPENDS +=	x11/gtk+3
MODMOZ_WANTLIB +=	cairo-gobject gdk-3 gtk-3
.else
MODMOZ_WANTLIB +=	Xcursor Xi Xinerama Xrandr
.endif
MODMOZ_LIB_DEPENDS +=	x11/gtk+2
MODMOZ_WANTLIB +=	Xcomposite Xdamage Xfixes gdk-x11-2.0 gtk-x11-2.0

PORTHOME =	${WRKSRC}

# from browser/config/mozconfig
CONFIGURE_ARGS +=--enable-application=${MOZILLA_CODENAME}

WRKDIST ?=	${WRKDIR}/${MOZILLA_DIST}-${MOZILLA_DIST_VERSION}

# needed for PLIST
MOZILLA_VER =	${MOZILLA_VERSION:C/b[0-9]*//:C/esr//:C/rc.$//}
SUBST_VARS +=	MOZILLA_PROJECT MOZILLA_VER MOZILLA_VERSION

MAKE_ENV +=	MOZILLA_OFFICIAL=1 \
		SHELL=/bin/sh \
		SO_VERSION="${SO_VERSION}" \
		LLVM_CONFIG="${LOCALBASE}/bin/llvm-config"

CONFIGURE_ENV +=	${MAKE_ENV}
# ensure libffi's configure doesnt pick gsed/gmkdir/gawk
CONFIGURE_ENV +=	ac_cv_path_ax_enable_builddir_sed=/usr/bin/sed
CONFIGURE_ENV +=	ac_cv_path_SED=/usr/bin/sed
CONFIGURE_ENV +=	ac_cv_path_mkdir=/bin/mkdir
CONFIGURE_ENV +=	ac_cv_prog_AWK=/usr/bin/awk
