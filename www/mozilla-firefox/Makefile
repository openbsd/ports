# $OpenBSD: Makefile,v 1.43 2005/12/21 15:33:00 kurt Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT=	"redesign of Mozilla's browser component"

VER=		1.5
DISTNAME=	mozilla
PKGNAME=	mozilla-firefox-${VER}p0
SO_VERSION=	8.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/projects/firefox/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xft Xrender Xinerama Xt c fontconfig freetype m pthread z \
		atk-1.0.0.0 cairo glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		jpeg pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0 png
.if empty(MACHINE_ARCH:Malpha)
WANTLIB+=	stdc++
.endif

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/firefox/releases/${VER}/source/ \
		http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${VER}/source/
DISTFILES=	firefox-${VER}-source.tar.bz2

MODULES=	gcc3 gettext
MODGCC3_ARCHES=	alpha
MODGCC3_LANGS=	C++
RUN_DEPENDS=	:esound-*:audio/esound
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip \
		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes
SUBST_VARS=	LOCALBASE SO_VERSION

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf \
				${WRKSRC}/nsprpub/build/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--without-system-nspr		\
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

MAKE_ENV=	MOZ_CO_PROJECT=browser \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla-firefox

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/browser/base/branding/ && cp aboutCredits.png about.png
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/browser/app/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/nsprpub/pr/include/md/_openbsd.h \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
.for dir in chrome components defaults extensions greprefs res searchplugins
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.?.? | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.?.? ${MOZ}/components/*.so.?.? ${MOZ}/components/*.js
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}

	${INSTALL_DATA} ${WRKSRC}/browser/app/mozicon16.xpm ${WRKSRC}/browser/app/mozicon50.xpm ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/firefox ${MOB}/firefox-config ${PREFIX}/bin/
	ln -f ${PREFIX}/bin/firefox ${PREFIX}/bin/mozilla-firefox
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom ${MOB}/firefox-bin ${MOB}/mozilla-xremote-client ${MOZ}
	ln -f ${MOZ}/firefox-bin ${MOZ}/mozilla-firefox-bin

.include <bsd.port.mk>
