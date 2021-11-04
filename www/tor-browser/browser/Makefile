# $OpenBSD: Makefile,v 1.69 2021/11/04 13:13:36 landry Exp $
# Some of this comes from www/firefox-esr as apropos, since Tor
# browser is a fork of ESR.  It is a good idea to look at that
# Makefile when editing this one (ESR versions not always the same).

COMMENT =		modified version of Firefox ESR for browsing over Tor
ONLY_FOR_ARCHS =	amd64

MOZILLA_VERSION =	${TB_VERSION}
MOZILLA_PROJECT =	${BROWSER_NAME}
MOZILLA_CODENAME =	browser
TL_VERSION =		0.2.30
HE_VERSION =		2021.4.15
REVISION =	0

EXTRACT_SUFX =		.tar.xz
PATCHORIG =		.pat.orig

PKGNAME =		${TB_PREFIX}-browser-${TB_VERSION}
DISTNAME =		src-firefox-tor-browser-78.15.0esr-10.5-1-build3

FIX_EXTRACT_PERMISSIONS	= Yes
EXTRACT_ONLY +=		${DISTNAME}.tar.xz \
			src-tor-launcher-${TL_VERSION}.tar.xz \
			tor-browser-linux64-${TB_VERSION}_en-US.tar.xz
DISTFILES =		${EXTRACT_ONLY} \
			https-everywhere-${HE_VERSION}-eff.xpi:0

SO_VERSION =		6.0
MOZILLA_LIBS =		xul clearkey lgpllibs mozavcodec mozavutil mozgtk
MOZILLA_LIBS +=		freebl3 nss3 nssckbi
MOZILLA_LIBS +=		nssutil3 smime3 softokn3 ssl3
MOZILLA_LIBS +=		nspr4 mozsqlite3 plc4 plds4

# mozilla public license for the browser; GPLv2+ for HTTPS Everywhere
PERMIT_PACKAGE=	Yes

MASTER_SITES =		https://dist.torproject.org/torbrowser/${TB_VERSION}/ \
			https://archive.torproject.org/tor-package-archive/torbrowser/${TB_VERSION}/
MASTER_SITES0 =		https://www.eff.org/files/

MODULES =		www/mozilla lang/python

MODPY_RUNDEP =		No

COMPILER =		base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

# tor-browser needs built-in nss, sqlite
MOZILLA_USE_BUNDLED_NSPR =	Yes
MOZILLA_USE_BUNDLED_NSS =	Yes
# 63 requires node because why not #1483595
BUILD_DEPENDS +=	lang/node
# 63 requires cbindgen #1478813
BUILD_DEPENDS +=	devel/cbindgen>=0.14.3

# uses pledge()
WANTLIB += X11-xcb Xcursor Xi intl xcb xcb-shm harfbuzz ${COMPILER_LIBCXX}

# Regression tests are too hard to adapt to run here
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/src-//}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=		BUILD_VERBOSE_LOG="1" CARGOFLAGS="-j${MAKE_JOBS}"

# app-name etc. for tor-browser
CONFIGURE_ARGS +=	--with-app-name=${BROWSER_NAME}			\
			--with-tor-browser-version=${TB_VERSION}	\
			--disable-tor-browser-update

# for nss build system
MAKE_ENV +=		BUILD_OPT=1 \
			LOCALBASE="${LOCALBASE}" \
			NSS_ENABLE_ECC=1 \
			XCFLAGS="-I${LOCALBASE}/include ${CFLAGS}"
BUILD_DEPENDS +=	devel/py-virtualenv

BUILD_DEPENDS +=	archivers/unzip archivers/zip

RUN_DEPENDS +=		net/tor>=0.4.6.7

CONFIGURE_ARGS +=	--enable-release #1386371
CONFIGURE_ARGS +=	--enable-sandbox
CONFIGURE_ARGS +=	--with-libclang-path=${LOCALBASE}/lib

# XXX badly formed debug in libxul ?
DWZ = :
#DEBUG_PACKAGES =	${BUILD_PACKAGES}
DEBUG_CONFIGURE_ARGS +=	--enable-debug-symbols \
			--disable-install-strip

post-extract:
	mv ${WRKDIR}/tor-browser_en-US ${WRKSRC}
	mv ${WRKDIR}/tor-launcher-${TL_VERSION}/ \
		${WRKSRC}/browser/extensions/tor-launcher

post-patch:
	# hack config/baseconfig.mk to not use MOZ_APP_VERSION in a few places
	sed -i.bak -e 's/-$$(MOZ_APP_VERSION)/-${TB_VERSION}/'	\
		${WRKSRC}/config/baseconfig.mk
	# drop in sh front end to configure.py so CONFIGURE_STYLE=simple works
	${SUBST_PROGRAM} ${FILESDIR}/configure ${WRKSRC}/configure
	${SUBST_PROGRAM} ${FILESDIR}/configure ${WRKSRC}/js/src/configure
	${SUBST_CMD} ${WRKSRC}/browser/extensions/tor-launcher/src/defaults/preferences/torlauncher-prefs.js
	# Not using a patch for this; patch context would contain UTF-8
	sed -i 's/#ifdef XP_LINUX/#if defined(XP_LINUX) || defined(XP_OPENBSD)/' \
	    ${WRKSRC}/browser/app/profile/000-tor-browser.js

BROWSER_DIR = ${PREFIX}/lib/${BROWSER_NAME}
TRUEBROWSER_DIR = ${TRUEPREFIX}/lib/${BROWSER_NAME}
BROWSER_CFG = ${BROWSER_DIR}/${BROWSER_NAME}.cfg
BROWSER_INI = ${BROWSER_DIR}/distribution/distribution.ini

SUBST_VARS +=		TRUEBROWSER_DIR

post-install:
	# install prefs, bookmarks, app config file for Tor browser
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
	  ${BROWSER_DIR}/browser/defaults/preferences/all-openbsd.js
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/browser/defaults/profile
	${INSTALL_DATA} ${FILESDIR}/bookmarks.html \
	  ${BROWSER_DIR}/browser/defaults/profile
	# tor-browser JS config file
	${INSTALL_DATA} ${FILESDIR}/${BROWSER_NAME}.cfg ${BROWSER_CFG}
	chown ${SHAREOWN}:${SHAREGRP} ${BROWSER_CFG}
	chmod ${SHAREMODE} ${BROWSER_CFG}
	# install distribution.ini file
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/distribution
	echo "[Global]\nid=OpenBSD\nversion=${OSREV}\n" > ${BROWSER_INI}
	echo "about=Packaged by ${MAINTAINER}\n" >> ${BROWSER_INI}
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/${BROWSER_NAME}.desktop \
		${PREFIX}/share/applications/${BROWSER_NAME}.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${BROWSER_DIR}/browser/chrome/icons/default/default128.png \
		${PREFIX}/share/pixmaps/${BROWSER_NAME}.png
	# link default48.png to default.png to be used by default
	# by non-icccm compliant wm
	ln -f ${BROWSER_DIR}/browser/chrome/icons/default/default{48,}.png

	# install torrc-defaults for Tor Launcher
	${INSTALL_DATA_DIR} ${PREFIX}/share/${BROWSER_NAME}
	${SUBST_DATA} ${FILESDIR}/torrc-defaults \
		${PREFIX}/share/${BROWSER_NAME}/torrc-defaults

	# install fonts.conf and fonts
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/browser/fontconfig
	${SUBST_DATA} \
	    ${WRKSRC}/tor-browser_en-US/Browser/TorBrowser/Data/fontconfig/fonts.conf \
	    ${BROWSER_DIR}/browser/fontconfig/fonts.conf
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/browser/fonts
	cp ${WRKSRC}/tor-browser_en-US/Browser/fonts/* \
	    ${BROWSER_DIR}/browser/fonts

	# Include HTTPS Everywhere in omni.ja
	mkdir -p ${WRKSRC}/https-everywhere/chrome/torbutton/content/extensions/https-everywhere/
	unzip -o ${FULLDISTDIR}/https-everywhere-${HE_VERSION}-eff.xpi \
	    -d ${WRKSRC}/https-everywhere/chrome/torbutton/content/extensions/https-everywhere/
	cd ${WRKSRC}/https-everywhere && find chrome/ | zip -X -@ ${BROWSER_DIR}/omni.ja

	# install wrapper script (remove symlink first)
	rm ${PREFIX}/bin/${BROWSER_NAME}
	${SUBST_PROGRAM} ${FILESDIR}/${BROWSER_NAME} \
	    ${PREFIX}/bin/${BROWSER_NAME}

.for f in unveil.content unveil.gpu unveil.main pledge.content pledge.gpu pledge.main
	${INSTALL_DATA} ${FILESDIR}/${f} ${BROWSER_DIR}/browser/defaults/preferences/
.endfor

.include <bsd.port.mk>
