# $OpenBSD: Makefile,v 1.19 2017/09/28 16:33:24 landry Exp $
# Some of this comes from www/firefox-esr as apropos, since Tor
# browser is a fork of ESR.  It is a good idea to look at that
# Makefile when editing this one (ESR versions not always the same).

COMMENT =		modified version of Firefox ESR for browsing over Tor
ONLY_FOR_ARCHS =	amd64 i386

GH_PROJECT =		torb
GH_TAGNAME =		v${TB_VERSION}-esr52.3.0
MOZILLA_VERSION =	${TB_VERSION}
MOZILLA_PROJECT =	${BROWSER_NAME}
MOZILLA_CODENAME =	browser
REVISION =	0

MASTER_SITES =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/archive/
EXTRACT_SUFX =		.tar.gz
DIST_SUBDIR =		${BROWSER_NAME}
WRKDIST =		${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME:C/^v//}

PATCHORIG =		.pat.orig

PKGNAME =		${TB_PREFIX}-browser-${TB_VERSION}
DISTNAME =		${GH_TAGNAME}

SO_VERSION =		2.0
MOZILLA_LIBS =		xul lgpllibs mozavcodec mozavutil
MOZILLA_LIBS +=		freebl3 nss3 nssckbi nssdbm3
MOZILLA_LIBS +=		nssutil3 smime3 softokn3 ssl3
MOZILLA_LIBS +=		mozsqlite3

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		www/mozilla lang/python

MODPY_RUNDEP =		No

COMPILER =		clang
MODCLANG_ARCHS =	amd64 i386

MOZILLA_USE_BUNDLED_NSS =	Yes
MOZILLA_USE_BUNDLED_LIBEVENT =	Yes
MOZILLA_USE_BUNDLED_SQLITE =	Yes

WANTLIB +=		X11-xcb xcb xcb-shm intl ${LIBECXX}

LIB_DEPENDS +=		devel/gettext

# Regression tests are too hard to adapt to run here
NO_TEST =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

# for nss build system
MAKE_ENV +=		BUILD_OPT=1 \
			LOCALBASE="${LOCALBASE}" \
			NSS_ENABLE_ECC=1 \
			XCFLAGS="-I${LOCALBASE}/include ${CFLAGS}"
BUILD_DEPENDS +=	devel/py-virtualenv

CONFIGURE_ARGS +=	--with-app-name=${BROWSER_NAME}			\
			--with-tor-browser-version=${TB_VERSION}	\
			--disable-tor-browser-update

RUN_DEPENDS +=		net/tor>=0.3.0.10

# bug 857628
CONFIGURE_ARGS +=	--enable-pie

post-patch:
	# hack config/baseconfig.mk to not use MOZ_APP_VERSION in a few places
	sed -i.bak -e 's/-$$(MOZ_APP_VERSION)/-${TB_VERSION}/'	\
		${WRKSRC}/config/baseconfig.mk
	# drop in sh front end to configure.py so CONFIGURE_STYLE=simple works
	${SUBST_PROGRAM} ${FILESDIR}/configure ${WRKSRC}/configure
	${SUBST_PROGRAM} ${FILESDIR}/configure ${WRKSRC}/js/src/configure

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
	# install distribution.ini file
	${INSTALL_DATA_DIR} ${BROWSER_DIR}/distribution
	echo "[Global]\nid=OpenBSD\nversion=${OSREV}\nabout=Packaged by ${MAINTAINER}\n" > \
		${BROWSER_DIR}/distribution/distribution.ini
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
