# $OpenBSD: Makefile,v 1.95 2005/11/03 03:11:22 pvalchev Exp $

ONLY_FOR_ARCHS= alpha i386 sparc sparc64 amd64 powerpc

COMMENT=	"open source version of the Netscape browser"
COMMENT-devel=	"devel files for Gecko"

VER=		1.7.12
DISTNAME=	mozilla
PKGNAME=	mozilla-${VER}p4
PKGNAME-devel=	mozilla-devel-${VER}p4
DISTFILES=	mozilla-${VER}-source.tar.bz2
SO_VERSION=	5.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
 
CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/mozilla/releases/mozilla${VER}/source/ \
		http://ftp.mozilla.org/pub/mozilla.org/mozilla/releases/mozilla${VER}/source/

VMEM_WARNING=yes

MULTI_PACKAGES=	-devel
SUBPACKAGE?=

MODULES=	gcc3 devel/gettext
MODGCC3_ARCHES=	alpha
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	:libIDL-*:devel/libIDL \
		:zip->=2.3:archivers/zip \
		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
WANTLIB=	X11 Xt Xft Xrender atk-1.0.0.0 fontconfig freetype \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 m \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0

.if defined(PACKAGING) && ${SUBPACKAGE} == "-devel"
MODULES=	devel/gettext
RUN_DEPENDS=	:${PKGNAME}:www/mozilla
.else
RUN_DEPENDS=	:esound-0.2.*:audio/esound
WANTLIB+=	Xext Xp c jpeg png pthread z
.  if empty(MACHINE_ARCH:Malpha)
WANTLIB+=	stdc++
.  endif
.endif

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
CONFIGURE_ARGS=					\
		--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--without-system-nspr		\
		--enable-default-toolkit=gtk2	\
		--enable-xft			\
		--enable-optimize=-Os		\
		--enable-crypto			\
		--enable-extensions=default	\
		--disable-pedantic		\
		--disable-debug			\
		--disable-tests			\
		--disable-ldap			\
		--disable-gnomevfs

CONFIGURE_ENV=	PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION=${SO_VERSION}

MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION=${SO_VERSION}

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/mozilla

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

do-install:
.for dir in include lib
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB}/public && ${TAR} -chf - nss | \
		${TAR} -xf - -C ${MOZ}/include
.for dir in chrome components defaults greprefs res searchplugins
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB}/bin && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB}/bin && ${TAR} -chf - *.so.?.? | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.?.? ${MOZ}/components/*.so.?.? ${MOZ}/components/*.js
	${INSTALL_DATA} ${MOB}/bin/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/bin/mozilla ${PREFIX}/bin
	${INSTALL_SCRIPT} ${MOB}/bin/run-mozilla.sh ${MOB}/bin/mozilla-config ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/regchrome ${MOB}/bin/regxpcom ${MOB}/bin/mozilla-bin ${MOB}/bin/mozilla-xremote-client ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
