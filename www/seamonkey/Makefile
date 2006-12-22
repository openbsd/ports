# $OpenBSD: Makefile,v 1.1.1.1 2006/12/22 23:32:27 kurt Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT-main=	"integrated mozilla application suite"
COMMENT-devel=  "devel files for Gecko"

VER=		1.0.7
DISTNAME=	seamonkey-${VER}.source
PKGNAME=	seamonkey-${VER}
PKGNAME-main=	seamonkey-${VER}
PKGNAME-devel=  seamonkey-devel-${VER}

SO_VERSION=	9.3
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in accessibility appcomps auth autoconfig browsercomps \
	browserdirprovider caps chrome commandlines composer cookie docshell \
	editor embedcomponents fileview gfx_gtk gfxps gfxpsshar gkgfx \
	gklayout gkplugin gtkembedmoz gtkxtbin htmlpars i18n imglib2 inspector \
	jar50 jsd jsj mork mozfind mozjs necko necko2 nsappshell nss3 \
	nssckbi oji permissions pipboot pipnss pippki pref rdf \
	remoteservice searchservice smime3 softokn3 ssl3 system-pref \
	toolkitcomps transformiix txmgr uconv ucvmath universalchardet \
	webbrwsr websrvcs widget_gtk2 xmlextras xpcom xpcom_compat \
	xpcom_compat_c xpcom_core xpconnect xpinstall xpistub xul \
	addrbook bayesflt impComm4xMail impText import localmail \
	mailnews mailview mime mimeemitter mozldap msgbaseutil msgcompose \
	msgdb msgimap msgmdn msgnews msgsmime myspell nsprefm p3p \
	profile spellchecker sroaming typeaheadfind vcard wallet walletviewers \
	xremoteservice xulutil ldap50 prldap50 \
	fort swft
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

CATEGORIES=	www mail net

HOMEPAGE=	http://www.mozilla.org/projects/seamonkey/

MULTI_PACKAGES= -main -devel

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.mozilla.org/pub/mozilla.org/seamonkey/releases/${VER}/

MODULES=	devel/gettext
BUILD_DEPENDS=  :zip->=2.3:archivers/zip

RUN_DEPENDS-main= :esound-*:audio/esound
LIB_DEPENDS-main= \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
                nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr
WANTLIB-main=	X11 Xext Xft Xinerama Xrender Xt atk-1.0 c cairo fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 iconv \
		intl jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png \
		pthread stdc++ z

RUN_DEPENDS-devel= :${PKGNAME-main}:www/seamonkey,-main
LIB_DEPENDS-devel= \
		IDL-2::devel/libIDL \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
                nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr
WANTLIB-devel=	X11 Xext Xrender Xt atk-1.0 c cairo fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 iconv intl m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread z

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
		--enable-xft			\
		--enable-optimize=-Os		\
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
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

WRKDIST=	${WRKDIR}/mozilla

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/seamonkey

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/xpfe/bootstrap/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp
	@echo "`date "+%Y%d%m%H%M%S"`" > ${WRKSRC}/config/build_number

do-install:
.for dir in include idl lib
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB}/public && ${TAR} -chf - nss | \
		${TAR} -xf - -C ${MOZ}/include   
.for dir in chrome components defaults greprefs searchplugins res 
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB}/bin && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB}/bin && ${TAR} -chf - *.so.?.? | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.?.? ${MOZ}/components/*.so.?.? ${MOZ}/components/*.js
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/bin/seamonkey ${MOB}/bin/seamonkey-config ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/bin/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/regxpcom ${MOB}/bin/seamonkey-bin ${MOB}/bin/mozilla-xremote-client ${MOB}/bin/TestGtkEmbed \
	${MOB}/bin/mangle ${MOB}/bin/nsinstall ${MOB}/bin/shlibsign ${MOB}/bin/xpcshell ${MOB}/bin/xpicleanup ${MOB}/bin/xpidl \
	${MOB}/bin/xpt_dump ${MOB}/bin/xpt_link ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc ${PREFIX}/lib/pkgconfig
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/README.OpenBSD > ${MOZ}/README.OpenBSD

.include <bsd.port.mk>
