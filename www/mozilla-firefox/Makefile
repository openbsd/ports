# $OpenBSD: Makefile,v 1.124 2009/09/10 21:28:25 martynas Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc sparc64

COMMENT=	redesign of Mozilla's browser component

VER=		3.0.14
DISTNAME=	mozilla
PKGNAME=	mozilla-firefox-${VER}
SO_VERSION=	20.0
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
	windowds xmlextras xpconnect xpinstall zipwriter gfxpsshar \
	gkgfx gtkxtbin jsj mozjs mozlcms thebes xpcom xpcom_core \
	xul nullplugin unixprintplugin
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
DISTFILES=	firefox-${VER}-source.tar.bz2

MODULES=	devel/gettext lang/python
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=21,plc4.>=21,plds4.>=21:nspr->=4.8:devel/nspr \
		nss3.>=23,smime3.>=23,softokn3.>=23,ssl3.>=23:nss->=3.12.3:security/nss \
		sqlite3.>=10.0:sqlite3->=3.6.7:databases/sqlite3
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi \
		Xinerama Xrandr Xrender Xt atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread pthread-stubs stdc++ xcb z

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf

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
		--enable-official-branding

# from browser/config/mozconfig
CONFIGURE_ARGS+=--enable-application=browser

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug
.endif

MAKE_ENV=	MOZ_CO_PROJECT=browser \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

MODPY_RUNDEP=	No

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla-firefox

DATADIRS=	chrome components defaults dictionaries extensions \
		greprefs icons modules plugins res searchplugins

post-extract:
	@cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/widget/src/gtk2/

pre-configure:
	perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/browser/app/mozilla.in \
		${WRKSRC}/extensions/spellcheck/hunspell/src/mozHunspell.cpp \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/toolkit/xre/nsXREDirProvider.cpp

do-install:
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${FILESDIR}/browserconfig.properties ${MOB}/*.so.${SO_VERSION} \
		${MOB}/LICENSE ${MOB}/application.ini ${MOB}/blocklist.xml \
		${MOB}/platform.ini ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/firefox.desktop ${PREFIX}/share/applications
	${INSTALL_MAN} ${FILESDIR}/mozilla-firefox.1 ${PREFIX}/man/man1
	perl -pi -e 's,!!PREFIX!!,${TRUEPREFIX},g; \
		s,!!LOCALBASE!!,${LOCALBASE},g; s,!!VERSION!!,${VER},g' \
		${MOZ}/README.OpenBSD ${PREFIX}/man/man1/mozilla-firefox.1 \
		${PREFIX}/share/applications/firefox.desktop
	ln -f ${PREFIX}/man/man1/mozilla-firefox.1 ${PREFIX}/man/man1/firefox.1
	${INSTALL_SCRIPT} ${MOB}/firefox ${PREFIX}/bin
	ln -f ${PREFIX}/bin/firefox ${PREFIX}/bin/mozilla-firefox
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/firefox-bin ${MOB}/mozilla-xremote-client \
		${MOB}/regxpcom ${MOZ}
	ln -f ${MOZ}/firefox-bin ${MOZ}/mozilla-firefox-bin

.include <bsd.port.mk>
