# $OpenBSD: Makefile,v 1.53 2009/06/22 10:43:58 sthen Exp $

ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc64
SHARED_ONLY=	Yes

COMMENT=	small, simple, and powerful web browser for mobile devices
DISTNAME=	minimo-1.8.1.19
PKGNAME=	${DISTNAME}p1v0

CATEGORIES=	www
MASTER_SITES=	http://mirrors.protection.cx/~martynas/mozilla/minimo/
 
HOMEPAGE=	http://www-archive.mozilla.org/projects/minimo/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

BUILD_DEPENDS=	:zip->=2.3:archivers/zip \
		:unzip-*:archivers/unzip \
		:libIDL-*:devel/libIDL
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=3::graphics/png \
		gdk-x11-2.0.>=600.0,gdk_pixbuf-2.0.>=600.0,gtk-x11-2.0.>=600.0::x11/gtk+2 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr \
		nss3.>=19,nssutil3.>=22,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss
WANTLIB=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi Xinerama \
		Xrandr Xrender Xt Xau Xdmcp expat c fontconfig freetype m \
		pthread z \
		atk-1.0.>=1011.0 glib-2.0.>=600.0 gmodule-2.0.>=600.0 \
		gobject-2.0.>=600.0 pango-1.0.>=800.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 cairo glitz stdc++ gio-2.0
RUN_DEPENDS=	::devel/desktop-file-utils

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
VMEM_WARNING=	Yes

WRKDIST=	${WRKDIR}/mozilla

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf no-autoheader
# use system libs
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-system-nspr		\
		--with-system-nss		\
		--with-pthreads			\
		--disable-native-uconv

# minimo mozconfig
CONFIGURE_ARGS+=--enable-application=minimo	\
		--enable-default-toolkit=gtk2	\
		--enable-xft			\
		--disable-freetype2		\
		--disable-optimize		\
		--enable-strip			\
		--disable-debug			\
		--disable-shared		\
		--enable-static			\
		--disable-plugins
# things we dont want
CONFIGURE_ARGS+=--disable-installer		\
		--disable-updater		\
		--disable-gnomeui		\
		--disable-gnomevfs		\
		--disable-tests			\
		--disable-reorder
CONFIGURE_ARGS+=--enable-crypto

FLAVORS=debug
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--disable-strip --enable-debug --enable-optimize=-O0
INSTALL_STRIP=
.endif

MAKE_ENV=	MOZ_CO_PROJECT=minimo \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		topsrcdir=${WRKSRC}

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/share/minimo

pre-configure:
	${SUBST_CMD} ${WRKSRC}/embedding/minimo/ipkg/minimo.desktop

do-install:
	${INSTALL_DATA_DIR} ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/minimo ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${MOZ}/chrome
	${INSTALL_DATA} ${MOB}/chrome/classic.{jar,manifest} \
		${MOB}/chrome/en-US.{jar,manifest} \
		${MOB}/chrome/minimo.{jar,manifest} \
		${MOB}/chrome/minimo-skin.{jar,manifest} \
		${MOB}/chrome/minimo-skin-vga.{jar,manifest} \
		${MOB}/chrome/toolkit.{jar,manifest} \
		${MOB}/chrome/pippki.{jar,manifest} ${MOZ}/chrome/
	${INSTALL_DATA_DIR} ${MOZ}/components
	${INSTALL_DATA} ${MOB}/components/nsHelperAppDlg.js \
		${MOB}/components/nsProgressDialog.js \
		${MOB}/extensions/spatial-navigation@extensions.mozilla.org/components/* \
		${MOZ}/components/
	${INSTALL_DATA_DIR} ${MOZ}/greprefs
	${INSTALL_DATA} ${MOB}/greprefs/* ${MOZ}/greprefs/
	${INSTALL_DATA_DIR} ${MOZ}/res
	@cp -fr ${MOB}/res/* ${MOZ}/res/
	@rm -fr ${MOZ}/res/{samples,throbber,viewer.properties,viewsource.css,hiddenWindow.html,bloatcycle.html}
	${INSTALL_DATA_DIR} ${MOZ}/plugins
	${MOB}/xpt_link ${MOZ}/components/all.xpt ${MOB}/components/*.xpt
	@cd ${MOZ}/chrome && \
		${UNZIP} classic.jar && \
		rm -rf classic.jar && \
		rm -rf skin/classic/communicator && \
		rm -rf skin/classic/editor && \
		rm -rf skin/classic/messenger && \
		rm -rf skin/classic/navigator && \
		zip -r classic.jar skin && \
		rm -rf skin && \
		${UNZIP} en-US.jar && \
		rm -rf en-US.jar && \
		rm -rf locale/en-US/communicator && \
		rm -rf locale/en-US/navigator && \
		zip -r en-US.jar locale && \
		rm -rf locale
	@cp -f ${WRKSRC}/minimo/customization/all.js ${MOZ}/greprefs/
	@cat ${WRKSRC}/minimo/customization/ua.css.additions >> ${MOZ}/res/ua.css
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/embedding/minimo/ipkg/minimo.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/embedding/minimo/ipkg/minimo.png \
		${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
