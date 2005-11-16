# $OpenBSD: Makefile,v 1.12 2005/11/16 11:45:33 wilfried Exp $
ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc64
SHARED_ONLY=	Yes

COMMENT=	"mini mozilla"
DISTNAME=	minimo-20050802
PKGNAME=	${DISTNAME}p2
CATEGORIES=	www
MASTER_SITES=	http://mirrors.protection.cx/~jolan/

# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
SO_VERSION=	1.0
 
HOMEPAGE=	http://www.mozilla.org/projects/minimo/

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext gcc3
MODGCC3_ARCHES=	alpha
MODGCC3_LANGS=	C++

BUILD_DEPENDS=	:zip->=2.3:archivers/zip \
		:unzip-*:archivers/unzip \
		:libIDL-*:devel/libIDL \
		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.3::graphics/png \
		gdk-x11-2.0.600.0,gdk_pixbuf-2.0.600.0,gtk-x11-2.0.600.0::x11/gtk+2
WANTLIB=	ICE SM X11 Xft Xrender Xt c fontconfig freetype m pthread z \
		atk-1.0.1011.0 cairo glib-2.0.600.0 gmodule-2.0.600.0 \
		gobject-2.0.600.0 pango-1.0.800.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0
.if empty(MACHINE_ARCH:Malpha)
WANTLIB+=	stdc++
.endif

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
VMEM_WARNING=	Yes
SUBST_VARS=	LOCALBASE SO_VERSION

WRKDIST=	${WRKDIR}/mozilla

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf \
				${WRKSRC}/nsprpub/build/autoconf \
				${WRKSRC}/directory/c-sdk/config/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS+=						\
		--with-system-jpeg=${LOCALBASE}			\
		--with-system-png=${LOCALBASE}			\
		--with-system-zlib=/usr/lib			\
		--with-pthreads					\
		--without-system-nspr				\
		--enable-optimize=-Os				\
		--disable-pedantic				\
		--disable-debug					\
		--disable-v1-string-abi				\
		--enable-default-toolkit=gtk2			\
		--enable-xft					\
		--disable-freetype2				\
		--disable-xul					\
		--disable-profilesharing			\
		--disable-profilelocking			\
		--enable-single-profile				\
		--disable-extensions				\
		--disable-accessibility				\
		--disable-composer				\
		--enable-plaintext-editor-only			\
		--disable-mailnews				\
		--disable-ldap					\
		--disable-postscript				\
		--disable-mathml				\
		--disable-jsd					\
		--disable-jsloader				\
		--disable-installer				\
		--disable-xpinstall				\
		--disable-xpfe-components			\
		--disable-xprint				\
		--disable-necko-disk-cache			\
		--disable-plugins				\
		--enable-necko-small-buffers			\
		--disable-dtd-debug				\
		--disable-logging				\
		--disable-tests					\
		--enable-crypto					\
		--enable-necko-protocols=http,file,res,jar	\
		--enable-image-decoders=png,gif,jpeg 		\
		--enable-application=suite

FLAVORS=	debug
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug --enable-optimize=-O0 --enable-tests
INSTALL_STRIP=
.endif

CONFIGURE_ENV=	PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		MINIMO=1 \
		SO_VERSION=${SO_VERSION}

MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		MINIMO=1 \
		SO_VERSION=${SO_VERSION}

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/minimo

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/xpfe/bootstrap/mozilla.in
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/nsprpub/pr/include/md/_openbsd.h \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp
	touch ${WRKSRC}/embedding/minimo/chrome/skin/m.jpg

post-build:
	cd ${WRKSRC}/embedding/config && ${MAKE_PROGRAM}
	cd ${WRKSRC}/embedding/config && ${MAKE_PROGRAM} merge_xpt

do-install:
	mkdir -p ${WRKDIR}/chrome
	${UNZIP} -jod ${WRKDIR}/chrome \
		${WRKSRC}/dist/Embed/chrome/embed.jar
	${INSTALL_DATA_DIR} ${MOZ}/chrome
	${INSTALL_DATA} ${WRKDIR}/chrome/* ${MOZ}/chrome
.for dir in components greprefs res
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB}/bin && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	${INSTALL_DATA_DIR} ${MOZ}/greprefs
	${INSTALL_DATA} ${MOB}/bin/greprefs/* ${MOZ}/greprefs
	${INSTALL_DATA} ${WRKSRC}/embedding/minimo/all.js \
		${MOZ}/greprefs
	@cd ${MOB}/bin && ${TAR} -chf - *.so.?.? | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.?.? ${MOZ}/components/*.so.?.? ${MOZ}/components/*.js
	${INSTALL_PROGRAM} ${MOB}/bin/regxpcom ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/Minimo ${MOZ}/minimo-bin
	sed s,mozilla-bin,minimo-bin,g ${MOB}/bin/run-mozilla.sh > \
		${MOB}/bin/run-minimo.sh
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${FILESDIR}/TODO ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/bin/run-minimo.sh ${MOZ}
	${INSTALL_SCRIPT} ${FILESDIR}/minimo ${PREFIX}/bin

.include <bsd.port.mk>
