# $OpenBSD: Makefile,v 1.33 2007/03/04 23:37:27 robert Exp $

ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc64
SHARED_ONLY=	Yes

COMMENT=	"small, simple, and powerful web browser for mobile devices"
DISTNAME=	minimo-20061120
PKGNAME=	${DISTNAME}p6
SO_VERSION=	4.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in freebl3 nssckbi softokn3 nss3 smime3 ssl3
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

CATEGORIES=	www
MASTER_SITES=	http://mirrors.protection.cx/~jolan/
 
HOMEPAGE=	http://www.mozilla.org/projects/minimo/

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
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr
WANTLIB=	X11 Xext Xft Xrender Xt \
		c fontconfig freetype m pthread z \
		atk-1.0.>=1011.0 glib-2.0.>=600.0 gmodule-2.0.>=600.0 \
		gobject-2.0.>=600.0 pango-1.0.>=800.0 pangocairo-1.0 \
		pangoft2-1.0 cairo glitz
WANTLIB+=	stdc++

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
		--with-pthreads			\
		--disable-native-uconv

# minimo mozconfig
CONFIGURE_ARGS+=--enable-application=minimo	\
		--enable-default-toolkit=gtk2	\
		--enable-xft			\
		--disable-freetype2		\
		--enable-optimize=-Os		\
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
		MOZILLA_OFFICIAL=1 \
		SO_VERSION=${SO_VERSION} \
		NSS_ENABLE_ECC=1
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/minimo

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

do-install:
	${INSTALL_DATA_DIR} ${MOZ}
	@cd ${MOB} && ${TAR} -chf - *.so.${SO_VERSION} | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.${SO_VERSION}
	${INSTALL_PROGRAM} ${MOB}/minimo ${MOZ}/
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
	${INSTALL_SCRIPT} ${FILESDIR}/minimo ${PREFIX}/bin/ && \
		perl -pi -e 's|!!LOCALBASE!!|${LOCALBASE}|g' \
			${PREFIX}/bin/minimo

.include <bsd.port.mk>
