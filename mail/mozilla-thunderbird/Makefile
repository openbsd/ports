# $OpenBSD: Makefile,v 1.92 2010/04/27 20:57:55 landry Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc sparc64

COMMENT=	e-mail, rss and usenet client based on Mozilla codebase

VER=		3.0.4
DISTNAME=	comm-1.9.1
PKGNAME=	mozilla-thunderbird-${VER}p0

# need to be in synch with SO_VERSION in www/seamonkey
# for productivity/sunbird,-lighting and mail/enigmail to work ine
SO_VERSION=	15.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues. Whenever PKGNAME gets
# bumped and/or SO_VERSION changes, remember to update enigmail's
# and sunbird SO_VERSION and LIB_DEPENDS to match.

.for _lib in accessibility appcomps auth autoconfig caps chardet chrome commandlines \
	composer cookie dbusservice docshell embedcomponents fileview \
	gkgfxthebes gklayout gkplugin htmlpars i18n imgicon imglib2 import \
	intlapp jar50 jsd mail mailcomps mork mozfind mozldap msgsmime necko \
	nsappshell permissions pipboot pipnss pippki pref rdf remoteservice \
	satchel spellchecker storagecomps system-pref tkautocomplete \
	toolkitcomps txmgr uconv ucvmath universalchardet unixproxy webbrwsr \
	widget_gtk2 windowds xpautocomplete xpconnect xpinstall zipwriter \
	gfxpsshar gkgfx gtkxtbin ldap60 ldif60 mozjs prldap60 sqlite3 ssldap60 \
	thebes xpcom xpcom_core xul nullplugin unixprintplugin
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

CATEGORIES=	mail news

HOMEPAGE=	http://www.mozilla.org/projects/thunderbird/

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += xcb sndio stdc++ z

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/thunderbird/releases/${VER}/source/
DISTFILES=	thunderbird-${VER}.source.tar.bz2

MODULES=	devel/gettext lang/python
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=21,plc4.>=21,plds4.>=21:nspr->=4.8:devel/nspr \
		nss3.>=25,smime3.>=25,softokn3.>=25,ssl3.>=25:nss->=3.12.6:security/nss

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/mozilla/build/autoconf \
				${WRKSRC}/mozilla/js/src/build/autoconf \
				${WRKSRC}/mozilla/nsprpub/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
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
		--enable-application=mail

#http://groups.google.com/group/mozilla.support.thunderbird/browse_thread/thread/c2b667c871db035a?pli=1
#system sqlite must be built with FTS3 enabled
#		--enable-system-sqlite		\

ALL_TARGET=	default

MAKE_ENV=	MOZ_CO_PROJECT=mail \
		LD_LIBRARY_PATH="${WRKSRC}/mozilla/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

MOB=		${WRKSRC}/mozilla/dist/bin
MOZ=		${PREFIX}/mozilla-thunderbird

DATADIRS=	chrome components defaults dictionaries extensions \
		greprefs isp modules plugins res

post-extract:
	cp -f ${FILESDIR}/sydney_audio_sndio.c \
		${WRKSRC}/mozilla/media/libsydneyaudio/src/
	cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/mozilla/widget/src/gtk2/

pre-configure:
	cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	cd ${WRKSRC}/mozilla && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	cd ${WRKSRC}/mozilla/js/src && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	cd ${WRKSRC}/mozilla/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	${SUBST_CMD} ${WRKSRC}/mozilla/xpcom/io/nsAppFileLocationProvider.cpp \
		${WRKSRC}/mozilla/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/mozilla/extensions/spellcheck/hunspell/src/mozHunspell.cpp \
		${WRKSRC}/mozilla/build/unix/mozilla.in \
		${WRKSRC}/mozilla/toolkit/xre/nsXREDirProvider.cpp

do-install:
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOZ}
	${INSTALL_DATA} ${MOB}/*.ini ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/thunderbird ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom \
		${MOB}/thunderbird-bin \
		${MOB}/mozilla-xremote-client ${MOZ}
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${MOZ}/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -c ${FILESDIR}/thunderbird.desktop \
		${PREFIX}/share/applications/thunderbird.desktop
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/applications/thunderbird.desktop \
		${MOZ}/README.OpenBSD

.include <bsd.port.mk>
