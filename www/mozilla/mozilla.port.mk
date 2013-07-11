# $OpenBSD: mozilla.port.mk,v 1.57 2013/07/11 16:24:10 landry Exp $

SHARED_ONLY =	Yes
ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc64

DPB_PROPERTIES =	parallel

.for _lib in ${MOZILLA_LIBS}
SHARED_LIBS +=	${_lib}	${SO_VERSION}
.endfor

PKGNAME ?=	${MOZILLA_PROJECT}-${MOZILLA_VERSION:S/b/beta/}

MAINTAINER ?=	Landry Breuil <landry@openbsd.org>

MOZILLA_DIST ?=	${MOZILLA_PROJECT}
MOZILLA_DIST_VERSION ?=	${MOZILLA_VERSION}

HOMEPAGE ?=	http://www.mozilla.org/projects/${MOZILLA_DIST}

MASTER_SITES ?=	http://releases.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/releases/${MOZILLA_DIST_VERSION}/source/ \
		https://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/releases/${MOZILLA_DIST_VERSION}/source/ \
		ftp://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_DIST}/releases/${MOZILLA_DIST_VERSION}/source/
DISTNAME ?=	${MOZILLA_DIST}-${MOZILLA_DIST_VERSION}.source
EXTRACT_SUFX ?=	.tar.bz2
DIST_SUBDIR ?=	mozilla

MODMOZ_RUN_DEPENDS =	devel/desktop-file-utils
MODMOZ_BUILD_DEPENDS =	devel/libIDL \
			archivers/gtar \
			archivers/zip>=2.3

MODMOZ_LIB_DEPENDS =	x11/gtk+2

# special case the long-term maintained mozillas
.if ${MOZILLA_PROJECT} == "firefox" || \
	${MOZILLA_PROJECT} == "thunderbird" || \
	${MOZILLA_PROJECT} == "seamonkey"
MODMOZ_LIB_DEPENDS +=	devel/nspr>=4.9.6 \
			security/nss>=3.14.3
# needed during install
MODMOZ_BUILD_DEPENDS +=	archivers/unzip

# bug #736961
SEPARATE_BUILD =	Yes

# needed for webm
.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
MODMOZ_BUILD_DEPENDS +=	devel/yasm
.endif

CONFIGURE_ARGS +=	--enable-official-branding
CONFIGURE_ARGS +=	--disable-gconf
CONFIGURE_ARGS +=	--enable-gio
CONFIGURE_ARGS +=	--with-system-libevent=/usr/
CONFIGURE_ARGS +=	--with-system-bz2=${LOCALBASE}
MODMOZ_WANTLIB +=	event
.else
# for old mozillas : fennec, sunbird, firefox36, xulrunner
MODMOZ_LIB_DEPENDS +=	devel/nspr \
			security/nss
CONFIGURE_ARGS +=	--with-system-jpeg=${LOCALBASE}
MODMOZ_WANTLIB += jpeg
.endif

MODMOZ_WANTLIB +=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender Xt atk-1.0 c cairo \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 plc4 plds4 pthread pthread-stubs \
		smime3 sndio nssutil3 ssl3 stdc++ z

# gecko doesnt link anymore with krb5 since 22 (bug 648730)
.if ${MOZILLA_PROJECT} != "firefox"
MOZMOZ_WANTLIB +=	crypto krb5 asn1 com_err heimbase roken wind
.endif

# for all mozilla ports, build against systemwide sqlite3
MODMOZ_WANTLIB +=	sqlite3>=23
CONFIGURE_ARGS +=	--enable-system-sqlite
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

VMEM_WARNING ?=	Yes
USE_GMAKE ?=	Yes

AUTOCONF_VERSION =	2.13
CONFIGURE_ARGS +=	--with-system-zlib=/usr	\
		--with-system-nspr		\
		--with-system-nss		\
		--with-pthreads			\
		--disable-optimize		\
		--disable-tests			\
		--disable-pedantic		\
		--disable-installer		\
		--disable-updater		\
		--disable-gnomeui		\
		--disable-gnomevfs		\
		--disable-dbus			\
		--enable-default-toolkit=cairo-gtk2 \
		--enable-xinerama		\
		--enable-svg			\
		--enable-svg-renderer=cairo	\
		--enable-canvas

# no --with-system-jpeg starting with fx 18, requires libjpeg-turbo because of bug 791305

# for mozilla branches 1.9.2 and 2.x.x, build against systemwide cairo
.if ${MOZILLA_BRANCH} != 1.9.1
CONFIGURE_ARGS +=--enable-system-cairo
.endif

# those ones only apply to mozilla branch 1.9.2 but 1.9.1 apps don't complain
# crashreporter uses google breakpad, osx/win/lin/sol only
CONFIGURE_ARGS +=--disable-freetypetest		\
		--disable-mochitest		\
		--disable-libIDLtest		\
		--disable-glibtest		\
		--disable-necko-wifi		\
		--disable-crashreporter		\
		--disable-libnotify		\
		--enable-xft			\
		--disable-ipc

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
	${MOZILLA_PROJECT} == "firefox35" || \
	${MOZILLA_PROJECT} == "firefox36" || \
	${MOZILLA_PROJECT} == "xulrunner" || \
	${MOZILLA_PROJECT} == "fennec" || \
	${MOZILLA_PROJECT} == "xulrunner1.9"
WRKDIST ?=	${WRKDIR}/mozilla-${MOZILLA_BRANCH}
.else
WRKDIST ?=	${WRKDIR}/comm-${MOZILLA_BRANCH}
_MOZDIR =	mozilla
.endif

# target directory for installation
MOZ =		${PREFIX}/${MOZILLA_PROJECT}
# source for installation
MOB =		${WRKSRC}/${_MOZDIR}/dist/bin

# needed for PLIST and config/autoconf.mk.in
MOZILLA_VER =	${MOZILLA_VERSION:C/b.$//}
SUBST_VARS +=	MOZILLA_PROJECT MOZILLA_VER MOZILLA_VERSION 

MAKE_ENV +=	MOZ_CO_PROJECT=${MOZILLA_CODENAME} \
		LD_LIBRARY_PATH=${MOB} \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"

CONFIGURE_ENV +=${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/${_MOZDIR}/build/autoconf \
				${WRKSRC}/${_MOZDIR}/js/src/build/autoconf

# sydneyaudio was removed in gecko 22
.if ${MOZILLA_PROJECT} != "firefox" && ${MOZILLA_PROJECT} != "seamonkey"
post-extract:
# syndeyaudio sndio file comes from ffx FILESDIR
	cp -f ${PORTSDIR}/www/mozilla-firefox/files/sydney_audio_sndio.c \
		${WRKSRC}/${_MOZDIR}/media/libsydneyaudio/src/
.endif

# files to run SUBST_CMD on
MOZILLA_SUBST_FILES +=	${_MOZDIR}/xpcom/io/nsAppFileLocationProvider.cpp \
			${_MOZDIR}/build/unix/mozilla.in \
			${_MOZDIR}/extensions/spellcheck/hunspell/src/mozHunspell.cpp \
			${_MOZDIR}/toolkit/xre/nsXREDirProvider.cpp

.if ${MOZILLA_BRANCH} == 1.9.1 || ${MOZILLA_BRANCH} == 1.9.2
MOZILLA_SUBST_FILES +=	${_MOZDIR}/js/src/xpconnect/shell/Makefile.in
.endif

pre-configure:
.for d in ${MOZILLA_AUTOCONF_DIRS}
	cd ${WRKSRC}/${d} && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
.endfor
.for f in ${MOZILLA_SUBST_FILES}
	${SUBST_CMD} ${WRKSRC}/${f}
.endfor

# common install target - ports can use post-install for specific stuff
.if (${MOZILLA_PROJECT} == "xulrunner1.9" && ${MOZILLA_BRANCH} == "1.9.2") || \
	${MOZILLA_PROJECT} == "firefox35" || \
	${MOZILLA_PROJECT} == "firefox36" || \
	${MOZILLA_PROJECT} == "sunbird"
do-install:
	cd ${MOB} && \
		find ${MOZILLA_DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${MOZILLA_DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOB}/*.ini ${MOZ}
	# install shell wrapper to ${PREFIX}/bin
	${INSTALL_SCRIPT} ${MOB}/${MOZILLA_PROJECT} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/${MOZILLA_PROJECT}-bin ${MOB}/mozilla-xremote-client ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom ${MOZ}
	if [ -f ${FILESDIR}/${MOZILLA_PROJECT}.desktop ] ; then \
		${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
		${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
			${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \
	fi ;
.endif
