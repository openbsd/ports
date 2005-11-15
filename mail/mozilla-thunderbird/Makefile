# $OpenBSD: Makefile,v 1.30 2005/11/15 09:21:51 wilfried Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT=	"redesign of the integrated Mozilla App-Suite mail component"

VER=		1.0.7
DISTNAME=	mozilla
PKGNAME=	mozilla-thunderbird-${VER}p1
SO_VERSION=	4.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

CATEGORIES=	mail news

HOMEPAGE=	http://www.mozilla.org/projects/thunderbird/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xp Xrender Xt c cairo fontconfig freetype \
			m pthread z atk-1.0.0.0 glib-2.0.0.0 \
			gmodule-2.0.0.0 gobject-2.0.0.0 jpeg pango-1.0.0.0 \
			pangoft2-1.0.0.0 pangocairo-1.0.0.0
.if empty(MACHINE_ARCH:Malpha)
WANTLIB+=		stdc++
.endif

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/thunderbird/releases/${VER}/source/ \
		http://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/${VER}/source/
DISTFILES=	thunderbird-${VER}-source.tar.bz2

MODULES=	gcc3 devel/gettext
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
				${WRKSRC}/nsprpub/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

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
		--disable-installer

#  from mail/config/mozconfig
CONFIGURE_ARGS+=--enable-crypto			\
		--disable-mathml		\
		--disable-activex		\
		--disable-activex-scripting	\
		--disable-tests			\
		--disable-oji			\
		--disable-plugins		\
		--disable-necko-disk-cache	\
		--enable-single-profile		\
		--disable-profilesharing	\
		--enable-extensions=wallet,spellcheck,xmlextras,webservices \
		--enable-necko-protocols=http,file,jar,viewsource,res,data \
		--enable-image-decoders=default,-xbm

CONFIGURE_ENV=	MOZ_THUNDERBIRD=1 \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
MAKE_ENV=	MOZ_THUNDERBIRD=1 \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/mozilla-thunderbird
MAGIC=		{972ce4c6-7e08-4474-a285-3208198ce6fd}

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/mail/app/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/nsprpub/pr/include/md/_openbsd.h \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
.for dir in chrome components defaults greprefs res
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.?.? | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.?.? ${MOZ}/components/*.so.?.? ${MOZ}/components/*.js
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/mail/app/mozicon16.xpm ${WRKSRC}/mail/app/mozicon50.xpm ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/thunderbird ${PREFIX}/bin/mozilla-thunderbird
	ln -f ${PREFIX}/bin/mozilla-thunderbird ${PREFIX}/bin/thunderbird
	${INSTALL_SCRIPT} ${MOB}/thunderbird-config ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regchrome ${MOB}/regxpcom ${MOB}/thunderbird-bin ${MOB}/mozilla-xremote-client ${MOZ}
	ln -f ${MOZ}/thunderbird-bin ${MOZ}/mozilla-thunderbird-bin

	${INSTALL_DATA_DIR} ${MOZ}/extensions
	${INSTALL_DATA} ${FILESDIR}/Extensions.rdf ${MOZ}/extensions/
	${INSTALL_DATA_DIR} ${MOZ}/extensions/${MAGIC}
	${INSTALL_DATA} ${MOZ}/defaults/profile/extensions/installed-extensions.txt ${MOZ}/extensions/installed-extensions-processed.txt
	${INSTALL_DATA} ${MOZ}/defaults/profile/extensions/${MAGIC}/install.rdf ${MOZ}/extensions/${MAGIC}/

.include <bsd.port.mk>
