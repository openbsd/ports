# $OpenBSD: Makefile,v 1.9 2017/05/11 01:26:37 danj Exp $
# Some of this comes from www/firefox-esr as apropos, since Tor
# browser is a fork of ESR.  It is a good idea to look at that
# Makefile when editing this one (ESR versions not always the same).

COMMENT =		modified version of Firefox ESR for browsing over Tor

MOZILLA_VERSION =	${TB_VERSION}
MOZILLA_PROJECT =	${BROWSER_NAME}
MOZILLA_CODENAME =	browser

MASTER_SITES = 		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/archive/
EXTRACT_SUFX = 		.tar.gz
DIST_SUBDIR = 		${BROWSER_NAME}
WRKDIST = 		${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME:C/^v//}

GH_PROJECT =		torb
GH_TAGNAME =		v${TB_VERSION}-esr45.9.0

PKGNAME =		${TB_PREFIX}-browser-${TB_VERSION}
DISTNAME =		${GH_TAGNAME}

SO_VERSION =		1.0
MOZILLA_LIBS =		browsercomps xul lgpllibs
MOZILLA_LIBS +=		freebl3 nss3 nssckbi nssdbm3
MOZILLA_LIBS +=		nssutil3 smime3 softokn3 ssl3
MOZILLA_LIBS +=		mozsqlite3

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		www/mozilla lang/python

MOZILLA_USE_BUNDLED_NSS =	Yes
MOZILLA_USE_BUNDLED_LIBEVENT = 	Yes
MOZILLA_USE_BUNDLED_SQLITE =	Yes
MOZILLA_AUTOCONF_DIRS +=	. js/src

MODPY_RUNDEP =		No

# necessary glue to build with the correct compiler after fx 17
MODULES +=		lang/clang
MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c c++

# Regression tests are too hard to adapt to run here
NO_TEST =		Yes

# for nss build system
MAKE_ENV +=		BUILD_OPT=1 \
			LOCALBASE="${LOCALBASE}" \
			NSS_ENABLE_ECC=1 \
			XCFLAGS="-I${LOCALBASE}/include ${CFLAGS}"

CONFIGURE_STYLE =	autoconf no-autoheader

LIB_DEPENDS +=		devel/gettext>=0.10.38 	\
			converters/libiconv
WANTLIB +=		intl>=5 iconv>=6

BUILD_DEPENDS +=	devel/py-virtualenv

# to be able to link when building with clang on i386 or gcc on ppc
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--disable-debug-symbols
.endif

CONFIGURE_ARGS +=	--with-app-name=${BROWSER_NAME} 		\
			--with-tor-browser-version=${TB_VERSION}	\
			--disable-tor-browser-update			\
			--enable-tor-brower-data-in-home-dir

# relies on pulseaudio for sound and broken at runtime
CONFIGURE_ARGS +=	--disable-webrtc

CONFIGURE_ARGS +=	--disable-gstreamer

RUN_DEPENDS +=		net/tor>=0.2.9.10

# bug 857628
CONFIGURE_ARGS +=	--enable-pie

# there are sometimes .orig files in the source, messes with update-patches
post-extract:
	-find ${WRKSRC} -name '*.orig' -exec rm {} \;

post-patch:
	# hack config/baseconfig.mk to not use MOZ_APP_VERSION in a few places
	sed -i.bak -e 's/-$$(MOZ_APP_VERSION)/-${TB_VERSION}/'	\
		${WRKSRC}/config/baseconfig.mk

BROWSER_DIR = ${PREFIX}/lib/${BROWSER_NAME}-${TB_VERSION}
BROWSER_CFG = ${BROWSER_DIR}/${BROWSER_NAME}.cfg

post-install:
	# install prefs, bookmarks, app config file for Tor browser
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
	  ${BROWSER_DIR}/browser/defaults/preferences/all-openbsd.js
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/browser/defaults/profile
	${INSTALL_DATA} ${FILESDIR}/bookmarks.html \
	  ${BROWSER_DIR}/browser/defaults/profile
	# put tor-browser.cfg together
	(sed -e 's/^#/\/\/#/' < ${FILESDIR}/extension-overrides.js; \
	 cat ${FILESDIR}/tor-browser-cfg-tail.js) > ${BROWSER_CFG}
	chown ${SHAREOWN}:${SHAREGRP} ${BROWSER_CFG}
	chmod ${SHAREMODE} ${BROWSER_CFG}
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/${BROWSER_NAME}.desktop \
		${PREFIX}/share/applications/${BROWSER_NAME}.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${BROWSER_DIR}/browser/icons/mozicon128.png \
		${PREFIX}/share/pixmaps/${BROWSER_NAME}.png
	# link default48.png to default.png to be used by default
	# by non-icccm compliant wm
	ln -f ${BROWSER_DIR}/browser/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
