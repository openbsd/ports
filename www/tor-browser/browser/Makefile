# Some of this comes from www/firefox-esr as apropos, since Tor
# browser is a fork of ESR.  It is a good idea to look at that
# Makefile when editing this one (ESR versions not always the same).

COMMENT =		modified version of Firefox ESR for browsing over Tor

MOZILLA_VERSION =	${TB_VERSION}
MOZILLA_PROJECT =	${BROWSER_NAME}
MOZILLA_CODENAME =	browser

EXTRACT_SUFX =		.tar.xz
PATCHORIG =		.pat.orig

PKGNAME =		${TB_PREFIX}-browser-${TB_VERSION:S/a/alpha/}
DISTNAME =		src-firefox-tor-browser-102.8.0esr-12.0-1-build2

FIX_EXTRACT_PERMISSIONS	= Yes
DISTFILES +=		${DISTNAME}.tar.xz \
			tor-browser-linux64-${TB_VERSION}_ALL.tar.xz \
			tor-expert-bundle-${TB_VERSION}-linux-x86_64.tar.gz

SO_VERSION =		8.0
MOZILLA_LIBS =		xul clearkey lgpllibs mozavcodec mozavutil mozgtk
MOZILLA_LIBS +=		freebl3 nss3 nssckbi
MOZILLA_LIBS +=		nssutil3 smime3 softokn3 ssl3
MOZILLA_LIBS +=		nspr4 mozsqlite3 plc4 plds4 ipcclientcerts

# mozilla public license for the browser
PERMIT_PACKAGE=	Yes

MASTER_SITES =		https://dist.torproject.org/torbrowser/${TB_VERSION}/ \
			https://archive.torproject.org/tor-package-archive/torbrowser/${TB_VERSION}/

MODULES =		www/mozilla lang/python

MODPY_RUNDEP =		No

COMPILER =		ports-clang

# tor-browser needs built-in nss, sqlite
MOZILLA_USE_BUNDLED_NSPR =	Yes
MOZILLA_USE_BUNDLED_NSS =	Yes
# 63 requires node because why not #1483595
BUILD_DEPENDS +=	lang/node
# 63 requires cbindgen #1478813
BUILD_DEPENDS +=	devel/cbindgen>=0.23.0
# wasi
BUILD_DEPENDS +=	lang/wasi-sdk/compiler-rt \
			lang/wasi-sdk/libcxxabi \
			lang/wasi-sdk/libcxx \
			lang/wasi-libc

# uses pledge()
# Extra:  Xcomposite.4 Xcursor.5 Xdamage.4 Xfixes.6 Xi.12 Xrender.6
WANTLIB += Xrandr

# Regression tests are too hard to adapt to run here
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/src-//}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/configure.py
CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=		BUILD_VERBOSE_LOG="1" CARGOFLAGS="-j${MAKE_JOBS}"

# app-name etc. for tor-browser
CONFIGURE_ARGS +=	--with-app-name=${BROWSER_NAME}			\
			--with-tor-browser-version=${TB_VERSION}	\
			--enable-tor-browser-data-outside-app-dir

# for nss build system
MAKE_ENV +=		BUILD_OPT=1 \
			LOCALBASE="${LOCALBASE}" \
			NSS_ENABLE_ECC=1 \
			XCFLAGS="-I${LOCALBASE}/include ${CFLAGS}"

RUN_DEPENDS +=		net/obfs4proxy>=0.0.14 \
			net/snowflake_proxy>=2.4.1 \
			net/tor>=0.4.7.13

CONFIGURE_ARGS +=	--enable-release #1386371
CONFIGURE_ARGS +=	--enable-sandbox
CONFIGURE_ARGS +=	--enable-forkserver
CONFIGURE_ARGS +=	--with-wasi-sysroot=${LOCALBASE}/share/wasi-sysroot
CONFIGURE_ARGS +=	--enable-lto=thin
CONFIGURE_ARGS +=	--with-libclang-path=${LOCALBASE}/lib

# XXX badly formed debug
DWZ = :
#DEBUG_PACKAGES =	${BUILD_PACKAGES}
DEBUG_CONFIGURE_ARGS +=	--enable-debug-symbols \
			--disable-install-strip

post-extract:
	mv ${WRKDIR}/tor-browser ${WRKSRC}/tor-browser-linux64/

post-patch:
	# hack config/baseconfig.mk to not use MOZ_APP_VERSION in a few places
	sed -i.bak -e 's/-$$(MOZ_APP_VERSION)/-${TB_VERSION}/'	\
		${WRKSRC}/config/baseconfig.mk
	# drop in sh front end to configure.py so CONFIGURE_STYLE=simple works
	${SUBST_PROGRAM} ${FILESDIR}/configure ${WRKSRC}/configure
	${SUBST_PROGRAM} ${FILESDIR}/configure ${WRKSRC}/js/src/configure
	${SUBST_CMD} ${WRKSRC}/browser/app/profile/000-tor-browser.js
	# Not using a patch for this; patch context would contain UTF-8
	sed -i 's/#ifdef XP_LINUX/#if defined(XP_LINUX) || defined(XP_OPENBSD)/' \
	    ${WRKSRC}/browser/app/profile/000-tor-browser.js
	ln -fs ${WRKSRC}/mozconfig-linux-x86_64 ${WRKSRC}/.mozconfig

	# add default bridges for Pluggable Transports that we support
.for pt in meek-azure obfs4 snowflake
	I=1; \
	cat ${WRKDIR}/tor/pluggable_transports/bridges_list.${pt}.txt | while read -r line ; do \
		echo "pref(\"extensions.torlauncher.default_bridge.${pt}.$$I\", \"$$line\");" >>${WRKSRC}/browser/app/profile/000-tor-browser.js; \
		I=$$((I + 1)); \
	done
.endfor

	${SUBST_CMD} ${WRKSRC}/xpcom/build/BinaryPath.h

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
	    ${WRKSRC}/tor-browser-linux64/Browser/TorBrowser/Data/fontconfig/fonts.conf \
	    ${BROWSER_DIR}/browser/fontconfig/fonts.conf
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/browser/fonts
	cp ${WRKSRC}/tor-browser-linux64/Browser/fonts/* \
	    ${BROWSER_DIR}/browser/fonts

	# install wrapper script (remove symlink first)
	rm ${PREFIX}/bin/${BROWSER_NAME}
	${SUBST_PROGRAM} ${FILESDIR}/${BROWSER_NAME} \
	    ${PREFIX}/bin/${BROWSER_NAME}

.for f in unveil pledge
.for t in content gpu main rdd socket utility utility-audioDecoder
	${INSTALL_DATA} ${FILESDIR}/${f}.${t} ${BROWSER_DIR}/browser/defaults/preferences/
.endfor
.endfor

.include <bsd.port.mk>
