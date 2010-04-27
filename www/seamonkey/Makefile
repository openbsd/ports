# $OpenBSD: Makefile,v 1.45 2010/04/27 21:03:25 landry Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT=	integrated mozilla application suite

VER=		2.0.4
DISTNAME=	seamonkey-${VER}.source
PKGNAME=	seamonkey-${VER}p0
EXTRACT_SUFX=	.tar.bz2

# must be in sync with SO_VERSION in mail/mozilla-thunderbird
# for mail/enigmail and productivity/sunbird,-seamonkey to work fine
SO_VERSION=	15.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in accessibility appcomps auth autoconfig caps chardet chrome commandlines \
	composer cookie docshell embedcomponents fileview gkgfxthebes gklayout \
	gkplugin htmlpars i18n imgicon imglib2 import intlapp jar50 jsd mail \
	mork mozfind mozldap msgsmime necko nsappshell oji permissions pipboot \
	pipnss pippki places pref rdf remoteservice satchel spellchecker \
	storagecomps suite system-pref tkautocomplete toolkitcomps txmgr uconv \
	ucvmath universalchardet unixproxy webbrwsr widget_gtk2 windowds \
	xpautocomplete xpconnect xpinstall zipwriter gfxpsshar gkgfx gtkxtbin \
	jsj ldap60 ldif60 mozjs prldap60 sqlite3 ssldap60 thebes xpcom \
	xpcom_core xul nullplugin unixprintplugin
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

CATEGORIES=	www mail net news

HOMEPAGE=	http://www.mozilla.org/projects/seamonkey/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${VER}/source/
MASTER_SITES0=	http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${VER}/langpack/

LANGUAGES=	be \
		ca \
		cs \
		de \
		es-AR \
		es-ES \
		fr \
		gl \
		hu \
		it \
		ka \
		lt \
		nb-NO \
		nl \
		pl \
		pt-PT \
		ru \
		sk \
		sv-SE \
		tr

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

.for language in ${LANGUAGES}
DISTFILES+=	seamonkey-${VER}.${language}.langpack.xpi:0
.endfor

DIST_SUBDIR=	seamonkey-${VER}

MODULES=	devel/gettext lang/python
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip \
		:unzip-*:archivers/unzip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=21,plc4.>=21,plds4.>=21:nspr->=4.8:devel/nspr \
		nss3.>=25,smime3.>=25,softokn3.>=25,ssl3.>=25:nss->=3.12.6:security/nss

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
WANTLIB=	c glib-2.0 m pthread stdc++ sndio \
		X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 \
		cairo expat fontconfig freetype glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 jpeg pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread-stubs xcb z gio-2.0

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
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
		--enable-application=suite

#		--disable-javaxpcom		\
# from browser/config/mozconfig
CONFIGURE_ARGS+=--enable-application=suite

ALL_TARGET=	default

MAKE_ENV=	MOZ_CO_PROJECT=suite \
		LD_LIBRARY_PATH="${WRKSRC}/mozilla/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

WRKDIST=	${WRKDIR}/comm-1.9.1

MOB=		${WRKSRC}/mozilla/dist/bin
MOZ=		${PREFIX}/seamonkey

DATADIRS=	chrome components defaults dictionaries extensions \
		greprefs isp modules plugins res searchplugins

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
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOZ}
	${INSTALL_DATA} ${MOB}/*.ini ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/seamonkey ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/mozilla-xremote-client \
		${MOB}/regxpcom ${MOB}/seamonkey-bin ${MOZ}
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${MOZ}/README.OpenBSD
	chown -R ${SHAREOWN}:${SHAREGRP} ${MOZ}
	${INSTALL_MAN} ${WRKSRC}/mozilla/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/
.for language in ${LANGUAGES}
	${UNZIP} -oq ${FULLDISTDIR}/seamonkey-${VER}.${language}.langpack.xpi \
		-d ${MOZ}/extensions/langpack-${language}@seamonkey.mozilla.org
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -c ${FILESDIR}/seamonkey.desktop \
		${PREFIX}/share/applications/seamonkey.desktop
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/applications/seamonkey.desktop \

.include <bsd.port.mk>
