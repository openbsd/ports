# $OpenBSD: Makefile,v 1.19 2005/03/26 19:04:59 wilfried Exp $

ONLY_FOR_ARCHS=	alpha i386 sparc sparc64 amd64 powerpc

COMMENT=	"redesign of the integrated Mozilla App-Suite mail component"

VER=		1.0.2
DISTNAME=	mozilla
PKGNAME=	mozilla-thunderbird-${VER}

CATEGORIES=	mail news

HOMEPAGE=	http://www.mozilla.org/projects/thunderbird/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xi Xp Xrender Xt c fontconfig freetype \
			iconv intl m pthread stdc++ z

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/thunderbird/releases/${VER}/source/ \
		http://ftp.mozilla.org/pub/thunderbird/releases/${VER}/source/
DISTFILES=	thunderbird-${VER}-source.tar.bz2

MODULES=	gcc3
MODGCC3_ARCHES=	alpha
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	:zip->=2.3:archivers/zip \
		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+ \
		glib.1,gmodule.1::devel/glib \
		IDL.4::devel/ORBit \
		jpeg.62::graphics/jpeg \
		png.3::graphics/png \
		esd.2::audio/esound

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS=	Yes
SUBST_VARS=	LOCALBASE

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
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
MAKE_ENV=	MOZ_THUNDERBIRD=1 \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin"

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

do-install:
.for dir in chrome components defaults greprefs res
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.1.0 ${MOZ}/components/*.so.1.0 ${MOZ}/components/*.js
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/mail/app/mozicon16.xpm ${WRKSRC}/mail/app/mozicon50.xpm ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/thunderbird ${PREFIX}/bin/mozilla-thunderbird
	ln -f ${PREFIX}/bin/mozilla-thunderbird ${PREFIX}/bin/thunderbird
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOB}/thunderbird-config ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regchrome ${MOB}/regxpcom ${MOB}/thunderbird-bin ${MOB}/mozilla-xremote-client ${MOZ}
	ln -f ${MOZ}/thunderbird-bin ${MOZ}/mozilla-thunderbird-bin

	${INSTALL_DATA_DIR} ${MOZ}/extensions
	${INSTALL_DATA} ${FILESDIR}/Extensions.rdf ${MOZ}/extensions/
	${INSTALL_DATA_DIR} ${MOZ}/extensions/${MAGIC}
	${INSTALL_DATA} ${MOZ}/defaults/profile/extensions/installed-extensions.txt ${MOZ}/extensions/installed-extensions-processed.txt
	${INSTALL_DATA} ${MOZ}/defaults/profile/extensions/${MAGIC}/install.rdf ${MOZ}/extensions/${MAGIC}/

.include <bsd.port.mk>
