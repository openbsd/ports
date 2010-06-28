# $OpenBSD: Makefile,v 1.39 2010/06/28 21:32:04 landry Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc sparc64

COMMENT=	redesign of Mozilla's browser component

VER=		3.5.10
DISTNAME=	mozilla-1.9.1
PKGNAME=	firefox35-${VER}
SO_VERSION=	23.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in accessibility appcomps auth autoconfig browsercomps \
	browserdirprovider caps chardet chrome commandlines composer \
	cookie docshell embedcomponents fileview gkgfxthebes gklayout \
	gkplugin htmlpars i18n imgicon imglib2 intlapp jar50 jsd \
	mozfind necko nsappshell oji permissions pipboot pipnss \
	pippki places pref rdf remoteservice satchel spellchecker \
	storagecomps system-pref tkautocomplete toolkitcomps txmgr \
	uconv ucvmath universalchardet unixproxy webbrwsr widget_gtk2 \
	windowds xpconnect xpinstall zipwriter gfxpsshar \
	gkgfx gtkxtbin jsj mozjs thebes xpcom xpcom_core xul \
	nullplugin unixprintplugin
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

CATEGORIES=	www

FLAVORS=	debug
FLAVOR?=

HOMEPAGE=	http://www.mozilla.org/projects/firefox/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${VER}/source/
DISTFILES=	firefox-${VER}.source.tar.bz2

MODULES=	devel/gettext lang/python
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=21,plc4.>=21,plds4.>=21:nspr->=4.8:devel/nspr \
		nss3.>=25,smime3.>=25,softokn3.>=25,ssl3.>=25:nss->=3.12.6:security/nss \
		sqlite3.>=13.3:sqlite3->=3.6.16.1:databases/sqlite3
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender Xt atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread pthread-stubs sndio stdc++ xcb z \
		xcb-render xcb-render-util

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf \
				${WRKSRC}/js/src/build/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-system-nspr		\
		--with-system-nss		\
		--with-pthreads			\
		--enable-xft			\
		--disable-optimize		\
		--enable-default-toolkit=cairo-gtk2 \
		--disable-debug			\
		--disable-tests			\
		--disable-freetypetest		\
		--disable-mochitest		\
		--disable-libIDLtest		\
		--disable-glibtest		\
		--disable-pedantic		\
		--disable-installer		\
		--disable-updater		\
		--disable-gnomeui		\
		--disable-gnomevfs		\
		--disable-dbus			\
		--enable-xinerama		\
		--enable-svg			\
		--enable-svg-renderer=cairo	\
		--enable-system-cairo		\
		--enable-system-sqlite		\
		--enable-canvas			\
		--disable-libxul		\
		--disable-crashreporter		\
		--enable-official-branding

# from browser/config/mozconfig
CONFIGURE_ARGS+=--enable-application=browser

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug
.endif

MAKE_ENV=	BUILD_OFFICIAL=1 \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		MOZILLA_OFFICIAL=1 \
		MOZ_CO_PROJECT=browser \
		NSS_ENABLE_ECC=1 \
		NSS_USE_SYSTEM_SQLITE=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

MODPY_RUNDEP=	No

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/firefox35

DATADIRS=	chrome components defaults dictionaries extensions \
		greprefs icons modules plugins res searchplugins

post-extract:
	@find ${WRKSRC} -name "*.orig" -exec rm -f {} \;
	@cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/widget/src/gtk2/
	@cp -f ${FILESDIR}/sydney_audio_sndio.c \
		${WRKSRC}/media/libsydneyaudio/src/

pre-configure:
	cd ${WRKSRC}/js/src && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	${SUBST_CMD} ${WRKSRC}/xpcom/io/nsAppFileLocationProvider.cpp \
		${WRKSRC}/build/unix/mozilla.in \
		${WRKSRC}/extensions/spellcheck/hunspell/src/mozHunspell.cpp \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/toolkit/xre/nsXREDirProvider.cpp

do-install:
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${FILESDIR}/browserconfig.properties ${MOB}/*.so.${SO_VERSION} \
		${MOB}/LICENSE ${MOB}/application.ini ${MOB}/blocklist.xml \
		${MOB}/platform.ini ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/README.OpenBSD \
		${MOZ}/README.OpenBSD
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/firefox.desktop \
		${PREFIX}/share/applications/firefox35.desktop
	${INSTALL_SCRIPT} ${MOB}/firefox ${PREFIX}/bin/firefox35
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/mozilla-xremote-client ${MOB}/regxpcom ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/firefox-bin ${MOZ}/firefox35-bin

.include <bsd.port.mk>
