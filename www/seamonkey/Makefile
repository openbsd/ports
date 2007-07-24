# $OpenBSD: Makefile,v 1.13 2007/07/24 19:33:15 naddy Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT-main=	"integrated mozilla application suite"
COMMENT-devel=  "devel files for Gecko"

VER=		1.1.3
DISTNAME=	seamonkey-${VER}.source
PKGNAME=	seamonkey-${VER}
PKGNAME-main=	seamonkey-${VER}
PKGNAME-devel=	seamonkey-devel-${VER}

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

MULTI_PACKAGES= -main -devel

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${VER}/
MASTER_SITES0=	http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${VER}/contrib-localized/

LANGUAGES=	cs-CZ de-AT pl-PL
BINLANGS=	pl-PL

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

.for i in ${LANGUAGES}
DISTFILES+=	seamonkey-${VER}.$i.langpack.xpi:0
.endfor

EXTRACT_CASES += *.xpi) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIR}/`basename $$archive .langpack.xpi | sed "s/.*-${VER}\.//"`;;

DIST_SUBDIR=	seamonkey-${VER}

MODULES=	devel/gettext
BUILD_DEPENDS=  :zip->=2.3:archivers/zip \
		:unzip-*:archivers/unzip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr \
		nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss
WANTLIB=	c glib-2.0 m pthread stdc++

RUN_DEPENDS-main= :esound-*:audio/esound
WANTLIB-main=	${WANTLIB} X11 Xau Xcursor Xdmcp Xext Xfixes Xft \
		Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo expat \
		fontconfig freetype glitz gmodule-2.0 gobject-2.0 \
		jpeg pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0 \
		png z \

LIB_DEPENDS-devel= ${MODGETTEXT_LIB_DEPENDS} IDL-2::devel/libIDL \
		seamonkey/mozjs,seamonkey/xpcom,seamonkey/xpcom_core:${PKGNAME-main}:www/seamonkey,-main
WANTLIB-devel=	${WANTLIB} nspr4 plc4 plds4

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes
SUBST_VARS=	LOCALBASE

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
DISTDIRS=	include idl

post-extract:
.for i in ${BINLANGS}	# normalize
	@mv -f ${WRKDIR}/$i/bin/* ${WRKDIR}/$i/
	@rmdir ${WRKDIR}/$i/bin
.endfor
.for i in ${LANGUAGES}
	@rm -f ${WRKDIR}/$i/chrome/*-{mac,win}.jar
.endfor
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/xpfe/bootstrap/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
	cd ${WRKSRC}/dist && \
		find ${DISTDIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DISTDIRS} ! -type d \
			-exec ${INSTALL_DATA} {} ${MOZ}/{} \;
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOZ}
	chown -R ${SHAREOWN}:${SHAREGRP} ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/seamonkey{,-config} ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/TestGtkEmbed \
		${MOB}/mozilla-xremote-client ${MOB}/nsinstall \
		${MOB}/regchrome ${MOB}/regxpcom ${MOB}/seamonkey-bin \
		${MOB}/xpcshell ${MOB}/xpicleanup ${MOB}/xpidl \
		${MOB}/xpt_dump ${MOB}/xpt_link ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc ${PREFIX}/lib/pkgconfig
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/README.OpenBSD > ${MOZ}/README.OpenBSD
	${INSTALL_MAN} ${WRKSRC}/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/
.for i in ${LANGUAGES}
	${INSTALL_DATA} ${WRKDIR}/$i/chrome/*.jar ${MOZ}/chrome/
	sh ${FILESDIR}/genchrome ${WRKDIR}/$i/install.js $i \
		>> ${MOZ}/chrome/installed-chrome.txt
.endfor

.include <bsd.port.mk>
