# $OpenBSD: Makefile,v 1.37 2019/10/01 04:39:32 semarie Exp $
# Some of this comes from www/firefox-esr as apropos, since Tor
# browser is a fork of ESR.  It is a good idea to look at that
# Makefile when editing this one (ESR versions not always the same).

COMMENT =		modified version of Firefox ESR for browsing over Tor
ONLY_FOR_ARCHS =	amd64 i386

BROKEN =		(unintentionally) broken by lang/rust 1.38.0

MOZILLA_VERSION =	${TB_VERSION}
MOZILLA_PROJECT =	${BROWSER_NAME}
MOZILLA_CODENAME =	browser

EXTRACT_SUFX =		.tar.gz
PATCHORIG =		.pat.orig

PKGNAME =		${TB_PREFIX}-browser-${TB_VERSION}
DISTNAME =		${BROWSER_NAME}-${TB_VERSION}
REVISION =		1

SO_VERSION =		4.0
MOZILLA_LIBS =		xul clearkey lgpllibs mozavcodec mozavutil mozgtk
MOZILLA_LIBS +=		freebl3 nss3 nssckbi nssdbm3
MOZILLA_LIBS +=		nssutil3 smime3 softokn3 ssl3
MOZILLA_LIBS +=		nspr4 mozsqlite3 plc4 plds4

# mozilla public license
PERMIT_PACKAGE=	Yes

MODULES =		www/mozilla lang/python

MODPY_RUNDEP =		No

COMPILER =		base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

# firefox >= 44 doesnt build with base libevent
MOZILLA_USE_BUNDLED_LIBEVENT =	Yes
# firefox >= 46 defaults to gtk+3
MOZILLA_USE_GTK3 =	 	Yes
# 56 requires 59.1
MOZILLA_USE_BUNDLED_ICU =	Yes
# 59 is broken with system cairo and the option is being dropped
MOZILLA_USE_BUNDLED_CAIRO = Yes
# #1460600
MOZILLA_USE_BUNDLED_HUNSPELL =	Yes
# tor-browser needs built-in nss, sqlite
MOZILLA_USE_BUNDLED_NSPR =	Yes
MOZILLA_USE_BUNDLED_NSS =	Yes
MOZILLA_USE_BUNDLED_SQLITE =	Yes

# firefox >= 53 needs rust
BUILD_DEPENDS +=	lang/rust
# stylo build needs LLVM
BUILD_DEPENDS +=	devel/llvm

WANTLIB += X11-xcb Xcursor Xi fribidi intl xcb xcb-shm ${COMPILER_LIBCXX}

# Regression tests are too hard to adapt to run here
NO_TEST =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

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

RUN_DEPENDS +=		net/tor>=0.3.4.8

# bug 857628
CONFIGURE_ARGS +=	--enable-pie
CONFIGURE_ARGS +=	--enable-release #1386371
# rust-simd doesn't work with lang/rust>=1.33
#CONFIGURE_ARGS +=	--enable-rust-simd #1261841

post-patch:
	# hack config/baseconfig.mk to not use MOZ_APP_VERSION in a few places
	sed -i.bak -e 's/-$$(MOZ_APP_VERSION)/-${TB_VERSION}/'	\
		${WRKSRC}/config/baseconfig.mk
	# drop in sh front end to configure.py so CONFIGURE_STYLE=simple works
	${SUBST_PROGRAM} ${FILESDIR}/configure ${WRKSRC}/configure
	${SUBST_PROGRAM} ${FILESDIR}/configure ${WRKSRC}/js/src/configure

BROWSER_DIR = ${PREFIX}/lib/${BROWSER_NAME}
BROWSER_CFG = ${BROWSER_DIR}/${BROWSER_NAME}.cfg
BROWSER_INI = ${BROWSER_DIR}/distribution/distribution.ini

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
	${INSTALL_DATA} \
		${BROWSER_DIR}/browser/chrome/icons/default/default128.png \
		${PREFIX}/share/pixmaps/${BROWSER_NAME}.png
	# link default48.png to default.png to be used by default
	# by non-icccm compliant wm
	ln -f ${BROWSER_DIR}/browser/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
