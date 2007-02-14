# $OpenBSD: Makefile,v 1.4 2007/02/14 17:13:38 kurt Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT-main=	"integrated mozilla application suite"
COMMENT-devel=  "devel files for Gecko"

VER=		1.0.7
DISTNAME=	seamonkey-${VER}.source
PKGNAME=	seamonkey-${VER}
PKGNAME-main=	seamonkey-${VER}p2
PKGNAME-devel=  seamonkey-devel-${VER}p2

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
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
                nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr
WANTLIB=	c glib-2.0 m pthread stdc++

RUN_DEPENDS-main= :esound-*:audio/esound
WANTLIB-main=	${WANTLIB} X11 Xext Xft Xinerama Xrender Xt atk-1.0 \
		cairo fontconfig freetype glitz gmodule-2.0 gobject-2.0 \
		jpeg pango-1.0 pangocairo-1.0 pangoft2-1.0 png z

LIB_DEPENDS-devel= ${MODGETTEXT_LIB_DEPENDS} IDL-2::devel/libIDL \
		seamonkey/mozjs,seamonkey/nss3,seamonkey/smime3,seamonkey/ssl3,seamonkey/xpcom,seamonkey/xpcom_core:${PKGNAME-main}:www/seamonkey,-main
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

MOB=		${WRKSRC}/dist/bin
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
.for dir in include idl
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${WRKSRC}/dist && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${WRKSRC}/dist/public && ${TAR} -chf - nss | \
		${TAR} -xf - -C ${MOZ}/include   
.for dir in chrome components defaults greprefs searchplugins res 
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.?.? | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.?.? ${MOZ}/components/*.so.?.? ${MOZ}/components/*.js
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/seamonkey ${MOB}/seamonkey-config ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom ${MOB}/seamonkey-bin ${MOB}/mozilla-xremote-client ${MOB}/TestGtkEmbed \
	${MOB}/mangle ${MOB}/nsinstall ${MOB}/shlibsign ${MOB}/xpcshell ${MOB}/xpicleanup ${MOB}/xpidl \
	${MOB}/xpt_dump ${MOB}/xpt_link ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc ${PREFIX}/lib/pkgconfig
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/README.OpenBSD > ${MOZ}/README.OpenBSD
	${INSTALL_MAN} ${WRKSRC}/xpfe/bootstrap/seamonkey.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
