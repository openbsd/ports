# $OpenBSD: mozilla.port.mk,v 1.46 2012/10/20 11:17:56 landry Exp $

SHARED_ONLY =	Yes
ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc64

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
			archivers/zip>=2.3

MODMOZ_LIB_DEPENDS =	x11/gtk+2 \
			devel/nspr>=4.9.2 \
			security/nss>=3.13.6

MODMOZ_WANTLIB =	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender Xt atk-1.0 c cairo crypto expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg krb5 m \
		nspr4>=21 nss3>=25 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 plc4>=21 plds4>=21 png pthread pthread-stubs \
		smime3>=25 sndio softokn3>=25 ssl3>=25 stdc++ xcb \
		xcb-render GL xcb-shm z

# for all mozilla ports, build against systemwide sqlite3
MODMOZ_WANTLIB +=	sqlite3
CONFIGURE_ARGS +=	--enable-system-sqlite
CONFIGURE_ENV +=	ac_cv_sqlite_secure_delete=yes

# avoids OOM when linking libxul
CONFIGURE_ENV +=	LDFLAGS="-Wl,--no-keep-memory"

WANTLIB +=	${MODMOZ_WANTLIB}
BUILD_DEPENDS +=${MODMOZ_BUILD_DEPENDS}
LIB_DEPENDS +=	${MODMOZ_LIB_DEPENDS}
RUN_DEPENDS +=	${MODMOZ_RUN_DEPENDS}

VMEM_WARNING ?=	Yes
USE_GMAKE ?=	Yes

AUTOCONF_VERSION =	2.13
CONFIGURE_ARGS +=--with-system-jpeg=${LOCALBASE}	\
		--with-system-zlib=/usr		\
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

.if ${FLAVOR:L:Mdebug}
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

post-extract:
# syndeyaudio sndio file comes from ffx FILESDIR
	cp -f ${PORTSDIR}/www/mozilla-firefox/files/sydney_audio_sndio.c \
		${WRKSRC}/${_MOZDIR}/media/libsydneyaudio/src/

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
