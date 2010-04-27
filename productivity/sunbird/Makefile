# $OpenBSD: Makefile,v 1.6 2010/04/27 21:00:50 landry Exp $

SHARED_ONLY =	Yes

COMMENT-main =		Mozilla calendar
COMMENT-lightning =	Mozilla Thunderbird calendar extension
COMMENT-seamonkey =	Mozilla Seamonkey calendar extension

VER =			1.0b1
DISTNAME =		lightning-sunbird-1.0b1.source
PKGNAME-main =		sunbird-${VER}p0
PKGNAME-lightning =	lightning-${VER}
PKGNAME-seamonkey =	lightning-seamonkey-${VER}

EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	productivity mail

MULTI_PACKAGES =	-main -lightning -seamonkey

# need to be in synch with SO_VERSION in
# mail/mozilla-thunderbird and www/seamonkey for lighting to work
SO_VERSION =	15.0

.for _lib in calbasecomps accessibility auth autoconfig caps chardet chrome \
	commandlines cookie docshell embedcomponents fileview gkgfxthebes \
	gklayout gkplugin htmlpars i18n imgicon imglib2 intlapp jar50 jsd mork \
	mozfind necko nsappshell permissions pipboot pipnss pippki pref rdf \
	remoteservice satchel spellchecker storagecomps system-pref \
	tkautocomplete toolkitcomps txmgr uconv unixproxy webbrwsr widget_gtk2 \
	windowds xpautocomplete xpconnect xpinstall zipwriter gfxpsshar gkgfx \
	gtkxtbin mozjs sqlite3 thebes xpcom xpcom_core xul nullplugin unixprintplugin
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE =	http://www.mozilla.org/projects/calendar

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://releases.mozilla.org/pub/mozilla.org/calendar/lightning/releases/${VER}/source/

MODULES =	devel/gettext lang/python
RUN_DEPENDS-main =	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS =	:libIDL-*:devel/libIDL \
		::archivers/zip \
		::archivers/unzip

LIB_DEPENDS-main =	${LIB_DEPENDS} \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		sqlite3.>=13.3:sqlite3->=3.6.16:databases/sqlite3 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr \
		nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss

WANTLIB = c m
WANTLIB-main += ${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo expat
WANTLIB-main += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB-main += gobject-2.0 gthread-2.0 jpeg pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pixman-1 png pthread sndio stdc++
WANTLIB-main += pthread-stubs xcb z

LIB_DEPENDS-lightning = mozilla-thunderbird/mozjs,mozilla-thunderbird/xpcom::mail/mozilla-thunderbird
LIB_DEPENDS-seamonkey = seamonkey/mozjs,seamonkey/xpcom::www/seamonkey

WANTLIB-lightning = ${WANTLIB} nspr4 plc4 plds4
WANTLIB-seamonkey = ${WANTLIB} nspr4 plc4 plds4

USE_X11 =	Yes
USE_GMAKE =	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS =	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/mozilla/build/autoconf \
				${WRKSRC}/mozilla/js/src/build/autoconf \
				${WRKSRC}/mozilla/nsprpub/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

AUTOCONF_VERSION =	2.13
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
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
		--enable-default-toolkit=cairo-gtk2	\
		--enable-xinerama		\
		--enable-svg			\
		--enable-svg-renderer=cairo	\
		--enable-system-cairo		\
		--enable-canvas			\
		--enable-official-branding	\
		--enable-application=calendar

ALL_TARGET=	default

WRKDIST =	${WRKDIR}/comm-1.9.1
MAKE_ENV =	MOZ_CO_PROJECT=calendar \
		LD_LIBRARY_PATH="${WRKSRC}/mozilla/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV =	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

MOB =		${WRKSRC}/mozilla/dist/bin
MOZ =		${PREFIX}/sunbird

# magic number taken from xpi/install.rdf
GUID =		{e2fda1a4-762b-4020-b5ad-a41df1933103}
LIGHTNINGDIR =	${PREFIX}/mozilla-thunderbird/extensions/${GUID}
SEAMONKEYDIR =	${PREFIX}/seamonkey/extensions/${GUID}
SUBST_VARS =	GUID
DATADIRS =	calendar-js chrome components defaults dictionaries extensions \
		greprefs icons modules plugins res

post-extract:
	cp -f ${FILESDIR}/sydney_audio_sndio.c \
		${WRKSRC}/mozilla/media/libsydneyaudio/src/
	@cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/mozilla/widget/src/gtk2/

pre-configure:
	cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	cd ${WRKSRC}/mozilla && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	cd ${WRKSRC}/mozilla/js/src && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	cd ${WRKSRC}/mozilla/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	${SUBST_CMD} ${WRKSRC}/mozilla/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/mozilla/xpcom/io/nsAppFileLocationProvider.cpp \
		${WRKSRC}/mozilla/extensions/spellcheck/hunspell/src/mozHunspell.cpp \
		${WRKSRC}/mozilla/build/unix/mozilla.in \
		${WRKSRC}/mozilla/toolkit/xre/nsXREDirProvider.cpp

do-install:
	@cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOZ}
	${INSTALL_DATA} ${MOB}/*.ini ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/sunbird ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom \
		${MOB}/sunbird-bin \
		${MOB}/mozilla-xremote-client ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -c ${FILESDIR}/sunbird.desktop \
		${PREFIX}/share/applications/sunbird.desktop
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/applications/sunbird.desktop

	# install lightning for thunderbird from the built xpi
	${INSTALL_DATA_DIR} ${LIGHTNINGDIR}
	unzip -q ${MOB}/../xpi-stage/lightning.xpi -d ${LIGHTNINGDIR}
	@perl -pi -e 's,OpenBSD_</em:targetPlatform>,OpenBSD</em:targetPlatform>\n<em:type>2</em:type>,' ${LIGHTNINGDIR}/install.rdf

	# install lightning for seamonkey from the built xpi
	${INSTALL_DATA_DIR} ${SEAMONKEYDIR}
	unzip -q ${MOB}/../xpi-stage/lightning.xpi -d ${SEAMONKEYDIR}
	@perl -pi -e 's,OpenBSD_</em:targetPlatform>,OpenBSD</em:targetPlatform>\n<em:type>2</em:type>,' ${SEAMONKEYDIR}/install.rdf

.include <bsd.port.mk>
