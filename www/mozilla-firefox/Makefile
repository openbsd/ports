# $OpenBSD: Makefile,v 1.64 2007/02/05 00:11:55 espie Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT-main=	"redesign of Mozilla's browser component"
COMMENT-devel=	"devel files for Gecko"

VER=		2.0.0.1
DISTNAME=	mozilla
PKGNAME=	mozilla-firefox-${VER}
PKGNAME-main=	mozilla-firefox-${VER}p0
PKGNAME-devel=	mozilla-firefox-devel-${VER}p0
SO_VERSION=	19.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in accessibility appcomps auth autoconfig browsercomps \
	browserdirprovider caps chrome commandlines composer cookie docshell \
	editor embedcomponents fileview gfx_gtk gfxps gfxpsshar gkgfx \
	gklayout gkplugin gtkembedmoz gtkxtbin htmlpars i18n imglib2 jar50 \
	jsd jsj mork mozfind mozjs myspell necko necko2 nsappshell nullplugin \
	oji permissions pipboot pipnss pippki pref rdf remoteservice \
	searchservice spellchecker storagecomps system-pref toolkitcomps \
	transformiix txmgr uconv ucvmath universalchardet unixprintplugin \
	webbrwsr websrvcs widget_gtk2 xmlextras xpcom xpcom_compat \
	xpcom_compat_c xpcom_core xpconnect xpinstall xpistub
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

CATEGORIES=	www

FLAVORS=	debug
FLAVOR?=

HOMEPAGE=	http://www.mozilla.org/projects/firefox/

MULTI_PACKAGES=	-main -devel

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${VER}/source/
DISTFILES=	firefox-${VER}-source.tar.bz2

MODULES=	devel/gettext
RUN_DEPENDS=	:esound-*:audio/esound
BUILD_DEPENDS=	:zip->=2.3:archivers/zip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr \
		nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss
WANTLIB=	X11 Xext Xrender atk-1.0 c cairo fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangox-1.0 \
		pangocairo-1.0 pangoft2-1.0 png pthread stdc++ z

WANTLIB-main=	${WANTLIB} Xft Xinerama Xt jpeg

LIB_DEPENDS-devel= ${MODGETTEXT_LIB_DEPENDS} IDL-2::devel/libIDL \
		mozilla-firefox/gtkembedmoz,mozilla-firefox/mozjs,mozilla-firefox/xpcom,mozilla-firefox/xpcom_core:${PKGNAME-main}:www/mozilla-firefox,-main
WANTLIB-devel=	${WANTLIB} gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 \
		nspr4 plc4 plds4

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes
SUBST_VARS=	LOCALBASE

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-system-nspr		\
		--with-system-nss		\
		--with-pthreads			\
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
		--enable-canvas

# from browser/config/mozconfig
CONFIGURE_ARGS+=--enable-application=browser

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug
.endif

MAKE_ENV=	MOZ_CO_PROJECT=browser \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}" \
		NSS_ENABLE_ECC=1
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla-firefox

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/browser/base/branding && cp aboutCredits.png about.png
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/browser/app/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
.for dir in include idl
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${WRKSRC}/dist && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
.for dir in chrome components defaults dictionaries extensions greprefs icons \
	init.d plugins res searchplugins
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir}/ | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.${SO_VERSION} | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.${SO_VERSION} \
		${MOZ}/components/*.so.${SO_VERSION} \
		${MOZ}/components/*.js \
		${MOZ}/plugins/*.so.${SO_VERSION}
	chown -R ${SHAREOWN}:${SHAREGRP} ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/LICENSE \
		${MOB}/bloaturls.txt \
		${MOB}/browserconfig.properties ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/firefox \
		${MOB}/firefox-config ${PREFIX}/bin
	ln -f ${PREFIX}/bin/firefox ${PREFIX}/bin/mozilla-firefox
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/firefox-bin ${MOB}/mozilla-xremote-client \
		${MOB}/regxpcom ${MOB}/TestGtkEmbed ${MOB}/nsinstall \
		${MOB}/xpcshell ${MOB}/xpicleanup ${MOB}/xpidl \
		${MOB}/xpt_dump ${MOB}/xpt_link ${MOZ}
	ln -f ${MOZ}/firefox-bin ${MOZ}/mozilla-firefox-bin
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/README.OpenBSD > ${MOZ}/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
