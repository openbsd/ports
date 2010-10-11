# $OpenBSD: mozilla.port.mk,v 1.7 2010/10/11 08:19:04 jasper Exp $

SHARED_ONLY =	Yes
ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc64

.for _lib in ${MOZILLA_LIBS}
SHARED_LIBS +=	${_lib}	${SO_VERSION}
.endfor

PKGNAME ?=	${MOZILLA_PROJECT}-${MOZILLA_VERSION}

_MOZ_PROJECT_SHORT =	${MOZILLA_PROJECT:S/mozilla-//}

HOMEPAGE ?=	http://www.mozilla.org/projects/${_MOZ_PROJECT_SHORT}

MASTER_SITES ?=	http://releases.mozilla.org/pub/mozilla.org/${_MOZ_PROJECT_SHORT}/releases/${MOZILLA_VERSION}/source/
DISTNAME ?=	${_MOZ_PROJECT_SHORT}-${MOZILLA_VERSION}.source
EXTRACT_SUFX ?=	.tar.bz2

MODMOZ_RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils
MODMOZ_BUILD_DEPENDS =	:libIDL-*:devel/libIDL \
			:zip->=2.3:archivers/zip

MODMOZ_LIB_DEPENDS =	::x11/gtk+2 \
			:nspr->=4.8.6:devel/nspr \
			:nss->=3.12.6:security/nss

MODMOZ_WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender Xt atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg m \
		nspr4.>=21 nss3.>=25 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 plc4.>=21 plds4.>=21 png pthread pthread-stubs \
		smime3.>=25 sndio softokn3.>=25 ssl3.>=25 stdc++ xcb \
		xcb-render xcb-render-util z

WANTLIB +=	${MODMOZ_WANTLIB}
BUILD_DEPENDS +=${MODMOZ_BUILD_DEPENDS}
LIB_DEPENDS +=	${MODMOZ_LIB_DEPENDS}
RUN_DEPENDS +=	${MODMOZ_RUN_DEPENDS}

VMEM_WARNING ?=	Yes
USE_GMAKE ?=	Yes

AUTOCONF_VERSION =	2.13
CONFIGURE_ARGS +=--with-system-jpeg=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-system-nspr		\
		--with-system-nss		\
		--with-pthreads			\
		--disable-optimize		\
		--disable-debug			\
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
		--enable-system-cairo		\
		--enable-canvas

# those ones only apply to mozilla branch 1.9.2 but 1.9.1 apps don't complain
CONFIGURE_ARGS +=--disable-freetypetest		\
		--disable-mochitest		\
		--disable-libIDLtest		\
		--disable-glibtest		\
		--disable-necko-wifi		\
		--disable-crashreporter		\
		--disable-libnotify		\
		--enable-xft			\
		--disable-ipc

# from browser/config/mozconfig
CONFIGURE_ARGS +=--enable-application=${MOZILLA_CODENAME}

.if ${MOZILLA_VERSION:C/\..*//} == "4"
WRKDIST =	${WRKDIR}/mozilla-central
.elif ${MOZILLA_PROJECT} == "mozilla-firefox" || \
	${MOZILLA_PROJECT} == "firefox35"
WRKDIST =	${WRKDIR}/mozilla-${MOZILLA_BRANCH}
.else
WRKDIST =	${WRKDIR}/comm-${MOZILLA_BRANCH}
_MOZDIR =	mozilla
.endif

# target directory for installation
MOZ =		${PREFIX}/${MOZILLA_PROJECT}
# source for installation
MOB =		${WRKSRC}/${_MOZDIR}/dist/bin

# needed for PLIST and config/autoconf.mk.in
SUBST_VARS +=	MOZILLA_PROJECT

MAKE_ENV =	MOZ_CO_PROJECT=${MOZILLA_CODENAME} \
		LD_LIBRARY_PATH=${MOB} \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"

CONFIGURE_ENV =	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/${_MOZDIR}/build/autoconf \
				${WRKSRC}/${_MOZDIR}/js/src/build/autoconf

post-extract:
# XXX nsSound.cpp different between mozilla branch - need to use local one
	@cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/${_MOZDIR}/widget/src/gtk2/
# syndeyaudio sndio file comes from ffx FILESDIR
	@cp -f ${PORTSDIR}/www/mozilla-firefox/files/sydney_audio_sndio.c \
		${WRKSRC}/${_MOZDIR}/media/libsydneyaudio/src/

# files to run SUBST_CMD on
MOZILLA_SUBST_FILES +=	${_MOZDIR}/xpcom/io/nsAppFileLocationProvider.cpp \
			${_MOZDIR}/build/unix/mozilla.in \
			${_MOZDIR}/extensions/spellcheck/hunspell/src/mozHunspell.cpp \
			${_MOZDIR}/js/src/xpconnect/shell/Makefile.in \
			${_MOZDIR}/toolkit/xre/nsXREDirProvider.cpp

pre-configure:
.for d in ${MOZILLA_AUTOCONF_DIRS}
	cd ${WRKSRC}/${d} && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
.endfor
.for f in ${MOZILLA_SUBST_FILES}
	${SUBST_CMD} ${WRKSRC}/${f}
.endfor

# common install target - ports can use post-install for specific stuff
do-install:
	cd ${MOB} && \
		find ${MOZILLA_DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${MOZILLA_DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOB}/*.ini ${MOZ}
	# install shell wrapper to ${PREFIX}/bin
	${INSTALL_SCRIPT} ${MOB}/${_MOZ_PROJECT_SHORT} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/${_MOZ_PROJECT_SHORT}-bin ${MOB}/mozilla-xremote-client ${MOZ}
.if ${MOZILLA_VERSION:C/\..*//} != "4"
	${INSTALL_PROGRAM} ${MOB}/regxpcom ${MOZ}
.endif
	if [ -f ${FILESDIR}/README.OpenBSD ]; then \
		${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/README.OpenBSD \
			${MOZ}/README.OpenBSD ; \
	fi ;
	if [ -f ${FILESDIR}/${_MOZ_PROJECT_SHORT}.desktop ] ; then \
		${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
		${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${_MOZ_PROJECT_SHORT}.desktop \
			${PREFIX}/share/applications/${_MOZ_PROJECT_SHORT}.desktop ; \
	fi ;
