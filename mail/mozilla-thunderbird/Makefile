# $OpenBSD: Makefile,v 1.83 2009/07/15 20:06:41 martynas Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc sparc64

COMMENT=	redesign of Mozilla's mail component

VER=		2.0.0.22
DISTNAME=	mozilla
PKGNAME=	mozilla-thunderbird-${VER}p0
SO_VERSION=	13.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues. Whenever PKGNAME gets
# bumped and/or SO_VERSION changes, remember to update enigmail's
# SO_VERSION and LIB_DEPENDS to match.

.for _lib in accessibility appcomps auth autoconfig caps chrome commandlines \
	composer docshell editor embedcomponents fileview gfx_gtk gfxps \
	gfxpsshar gkgfx gklayout gtkembedmoz gtkxtbin htmlpars i18n imglib2 \
	import jar50 jsd ldap50 mail mailcomps mork mozfind mozjs mozldap \
	msgsmime myspell necko necko2 nsappshell pipboot \
	pipnss pippki pref prldap50 rdf remoteservice \
	spellchecker storagecomps system-pref toolkitcomps transformiix \
	txmgr uconv universalchardet wallet walletviewers webbrwsr websrvcs \
	widget_gtk2 xmlextras xpcom xpcom_compat xpcom_compat_c xpcom_core \
	xpconnect xpinstall xpistub
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
WANTLIB += Xft Xi Xinerama Xrandr Xrender Xt atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangox-1.0 pixman-1 png pthread stdc++
WANTLIB += z

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/thunderbird/releases/${VER}/source/
DISTFILES=	thunderbird-${VER}-source.tar.bz2

MODULES=	devel/gettext
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr \
		nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-system-nspr		\
		--with-system-nss		\
		--with-pthreads			\
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
		--enable-canvas			\
		--enable-official-branding	\
		--enable-application=mail

MAKE_ENV=	MOZ_CO_PROJECT=mail \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MOZ_ENABLE_COREXFONTS=1 \
		topsrcdir=${WRKSRC}

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla-thunderbird

DATADIRS=	chrome components defaults dictionaries extensions \
		greprefs icons init.d isp res

post-extract:
	@cp -f ${FILESDIR}/nsSound.cpp ${WRKSRC}/widget/src/gtk2/

pre-configure:
	@cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/mail/app/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
	@cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \;
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} \
		${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/thunderbird \
		${MOB}/thunderbird-config ${PREFIX}/bin/
	ln -f ${PREFIX}/bin/thunderbird ${PREFIX}/bin/mozilla-thunderbird
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom \
		${MOB}/thunderbird-bin \
		${MOB}/mozilla-xremote-client ${MOZ}
	ln -f ${MOZ}/thunderbird-bin ${MOZ}/mozilla-thunderbird-bin
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/README.OpenBSD > ${MOZ}/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/thunderbird.desktop > \
			${PREFIX}/share/applications/thunderbird.desktop

.include <bsd.port.mk>
