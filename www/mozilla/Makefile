# $OpenBSD: Makefile,v 1.83 2005/03/13 05:02:16 kurt Exp $

ONLY_FOR_ARCHS= alpha i386 sparc sparc64 amd64 powerpc

COMMENT=	"open source version of the Netscape browser"
COMMENT-devel=	"devel files for Gecko"

VER=		1.7.5
DISTNAME=	mozilla
PKGNAME=	mozilla-${VER}
DISTFILES=	mozilla-source-${VER}.tar.bz2

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/mozilla/releases/mozilla${VER}/source/ \
		http://ftp.mozilla.org/pub/mozilla.org/mozilla/releases/mozilla${VER}/source/

MULTI_PACKAGES=	-devel

VMEM_WARNING=yes

.for i in ${MULTI_PACKAGES}
PKGNAME$i=	mozilla${i}-${VER}
.endfor

SUBPACKAGE?=

FLAVORS=	gtk2
FLAVOR?=

MODULES=	gcc3 devel/gettext
MODGCC3_ARCHES=	alpha
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	:zip->=2.3:archivers/zip \
		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.3::graphics/png

.if defined(PACKAGING) && ${SUBPACKAGE} == "-devel"
LIB_DEPENDS=
WANTLIB=	X11 Xt m Xext
.  if ${FLAVOR:L:Mgtk2}
RUN_DEPENDS=	:${PKGNAME}-gtk2:www/mozilla,gtk2
WANTLIB+=	Xft Xrender fontconfig freetype
.  else
RUN_DEPENDS=	:${PKGNAME}:www/mozilla
.  endif
.else
RUN_DEPENDS=	:esound-0.2.*:audio/esound
WANTLIB=	X11 Xext Xp Xt c m pthread stdc++ z
.  if ${FLAVOR:L:Mgtk2}
LIB_DEPENDS+=	gnomevfs-2::x11/gnome/vfs2
WANTLIB+=	ORBit-2 bonobo-2 bonobo-activation gconf-2 gthread-2.0.0.0
.  endif
.endif

.if ${FLAVOR:L:Mgtk2}
BUILD_DEPENDS+=	:libIDL-*:devel/libIDL
LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
WANTLIB+=	Xcursor Xft Xinerama Xrender atk-1.0.0.0 fontconfig freetype \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0
.else
BUILD_DEPENDS+=	:ORBit-*:devel/ORBit
LIB_DEPENDS+=	gtk.1,gdk.1::x11/gtk+
WANTLIB+=	Xi glib gmodule
.endif

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
CONFIGURE_ARGS=					\
		--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-pthreads			\
		--without-system-nspr		\
		--enable-optimize=-Os		\
		--enable-crypto			\
		--enable-extensions=default	\
		--disable-pedantic		\
		--disable-debug			\
		--disable-tests			\
		--disable-ldap

.if ${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-default-toolkit=gtk2	\
		--enable-xft			\
		--disable-freetype2
.else
CONFIGURE_ARGS+=--enable-default-toolkit=gtk	\
		--disable-xft			\
		--enable-freetype2
.endif

CONFIGURE_ENV=	PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
MAKE_ENV=	LD_LIBRARY_PATH="${WRKSRC}/dist/bin"

MOB=		${WRKSRC}/dist
MOZ=		${PREFIX}/mozilla

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@cd ${WRKSRC}/nsprpub && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@cd ${WRKSRC}/directory/c-sdk && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/xpfe/bootstrap/mozilla.in

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
	@cd ${MOB}/bin && ${TAR} -chf - *.so.1.0 | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.1.0 ${MOZ}/components/*.so.1.0 ${MOZ}/components/*.js
	${INSTALL_DATA} ${MOB}/bin/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/bin/mozilla ${PREFIX}/bin
	${INSTALL_SCRIPT} ${MOB}/bin/run-mozilla.sh ${MOB}/bin/mozilla-config ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/bin/regchrome ${MOB}/bin/regxpcom ${MOB}/bin/mozilla-bin ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
