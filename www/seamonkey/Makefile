# $OpenBSD: Makefile,v 1.39 2009/08/10 06:34:56 kili Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT=	integrated mozilla application suite

VER=		1.1.17
DISTNAME=	seamonkey-${VER}.source
PKGNAME=	seamonkey-${VER}p1

SO_VERSION=	10.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in accessibility addrbook appcomps auth autoconfig bayesflt \
	caps chrome composer cookie docshell editor embedcomponents \
	fileview gfx_gtk gfxps gklayout gkplugin htmlpars i18n imglib2 \
	impComm4xMail impText import jar50 jsd localmail mailnews \
	mailview mime mimeemitter mork mozfind mozldap msgcompose \
	msgdb msgimap msgmdn msgnews msgsmime myspell necko necko2 \
	nsappshell nsprefm oji p3p permissions pipboot pipnss pippki \
	pref profile rdf remoteservice searchservice spellchecker \
	sroaming storagecomps system-pref transformiix txmgr \
	typeaheadfind uconv ucvmath universalchardet vcard wallet \
	walletviewers webbrwsr websrvcs widget_gtk2 xmlextras \
	xpcom_compat_c xpconnect xpinstall xremoteservice gfxpsshar \
	gkgfx gtkembedmoz gtkxtbin jsj ldap50 mozjs msgbaseutil \
	prldap50 xpcom xpcom_compat xpcom_core xpistub nullplugin \
	unixprintplugin
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

CATEGORIES=	www mail net news

HOMEPAGE=	http://www.mozilla.org/projects/seamonkey/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${VER}/
MASTER_SITES0=	http://mirrors.protection.cx/~martynas/mozilla/seamonkey/langpacks/

LANGUAGES=	be-BY 1.1.9 \
		ca-AD 1.1.15 \
		cs-CZ 1.1.17 \
		de-AT 1.1.17 \
		el-GR 1.1.2 \
		es-ES 1.1.13 \
		fr-FR 1.1.16 \
		he-IL 1.1.2 \
		hu-HU 1.1.16 \
		it-IT 1.1.17 \
		lt-LT 1.1.12 \
		nl-NL 1.1.17 \
		pl-PL 1.1.17 \
		pt-BR 1.1.17 \
		ru-RU 1.1.17 \
		ur-PK 1.1.9 \
		sv-SE 1.1.12
BINLANGS=	be-BY el-GR fr-FR pl-PL pt-BR

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

.for language version in ${LANGUAGES}
DISTFILES+=	seamonkey-${version}.${language}.langpack.xpi:0
.endfor

EXTRACT_CASES += *.xpi) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIR}/`basename $$archive .langpack.xpi | sed "s/seamonkey-.*\.//"`;;

DIST_SUBDIR=	seamonkey-${VER}

MODULES=	devel/gettext
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip \
		:unzip-*:archivers/unzip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr \
		nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
WANTLIB=	c glib-2.0 m pthread stdc++ \
		X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xft Xi Xinerama Xrandr Xrender Xt atk-1.0 \
		cairo expat fontconfig freetype glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 jpeg pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pangox-1.0 pixman-1 png pthread-stubs xcb z gio-2.0

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--with-system-nspr		\
		--with-system-nss		\
		--enable-xft			\
		--disable-optimize		\
		--enable-default-toolkit=gtk2	\
		--disable-debug			\
		--disable-tests			\
		--disable-pedantic		\
		--disable-installer		\
		--disable-updater		\
		--disable-gnomeui		\
		--disable-gnomevfs		\
		--enable-xinerama		\
		--enable-svg			\
		--enable-svg-renderer=cairo	\
		--enable-system-cairo		\
		--disable-javaxpcom		\
		--enable-canvas

# from browser/config/mozconfig
CONFIGURE_ARGS+=--enable-application=suite

MAKE_ENV=	MOZ_CO_PROJECT=suite \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

WRKDIST=	${WRKDIR}/mozilla

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/seamonkey

DATADIRS=	chrome components defaults dictionaries greprefs \
		init.d plugins res searchplugins

post-extract:
	@cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/widget/src/gtk2/
.for i in ${BINLANGS}	# normalize
	@mv -f ${WRKDIR}/$i/bin/* ${WRKDIR}/$i/
	@rmdir ${WRKDIR}/$i/bin
.endfor
.for language version in ${LANGUAGES}
	@rm -f ${WRKDIR}/${language}/chrome/*-{mac,win}.jar
.endfor

pre-configure:
	@cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/rdf/chrome/tools/chromereg/Makefile.in \
		${WRKSRC}/xpfe/bootstrap/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOZ}
	chown -R ${SHAREOWN}:${SHAREGRP} ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/seamonkey ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/mozilla-xremote-client ${MOB}/regchrome \
		${MOB}/regxpcom ${MOB}/seamonkey-bin ${MOZ}
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/README.OpenBSD > ${MOZ}/README.OpenBSD
	${INSTALL_MAN} ${WRKSRC}/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/
.for language version in ${LANGUAGES}
	${INSTALL_DATA} ${WRKDIR}/${language}/chrome/*.jar ${MOZ}/chrome/
	sh ${FILESDIR}/genchrome ${WRKDIR}/${language}/install.js \
		${language} >> ${MOZ}/chrome/installed-chrome.txt
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/seamonkey.desktop > \
			${PREFIX}/share/applications/seamonkey.desktop

.include <bsd.port.mk>
