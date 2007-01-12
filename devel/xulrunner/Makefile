# $OpenBSD: Makefile,v 1.2 2007/01/12 20:35:15 kurt Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT-main=	"standalone XUL/XPCOM runtime environment"
COMMENT-devel=	"devel files for Gecko"

VER=		1.8.0.4
DISTNAME=	mozilla
PKGNAME=	xulrunner-${VER}p0
PKGNAME-main=	xulrunner-${VER}p0
PKGNAME-devel=  xulrunner-devel-${VER}p0
SO_VERSION=	1.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in accessibility appcomps auth autoconfig browsercomps \
	browserdirprovider caps chrome commandlines composer cookie docshell \
	editor embedcomponents fileview gfx_gtk gfxps gfxpsshar gkgfx \
	gklayout gkplugin gtkembedmoz gtkxtbin htmlpars i18n imglib2 inspector \
	jar50 jsd jsj mork mozfind mozjs necko necko2 nsappshell nss3 \
	nssckbi oji permissions pipboot pipnss pippki pref rdf \
	remoteservice searchservice smime3 softokn3 ssl3 system-pref \
	toolkitcomps transformiix txmgr uconv ucvmath universalchardet \
	webbrwsr websrvcs widget_gtk2 xmlextras xpcom xpcom_compat \
	xpcom_compat_c xpcom_core xpconnect xpinstall xpistub xul \
	xulutil fort swft
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

CATEGORIES=	devel

HOMEPAGE=	http://developer.mozilla.org/en/docs/XULRunner

MULTI_PACKAGES=	-main -devel

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/xulrunner/releases/${VER}/source/
DISTFILES=	xulrunner-${VER}-source.tar.bz2

MODULES=	devel/gettext
BUILD_DEPENDS=	:zip->=2.3:archivers/zip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
                nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr
WANTLIB=	c glib-2.0 m pthread stdc++

WANTLIB-main=	${WANTLIB} X11 Xext Xft Xinerama Xrender Xt atk-1.0 cairo \
		fontconfig freetype glitz gmodule-2.0 gobject-2.0 jpeg \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 png z

LIB_DEPENDS-devel= ${MODGETTEXT_LIB_DEPENDS} IDL-2::devel/libIDL \
		xulrunner/mozjs,xulrunner/nss3,xulrunner/smime3,xulrunner/ssl3,xulrunner/xpcom,xulrunner/xul:${PKGNAME-main}:devel/xulrunner,-main
WANTLIB-devel=	${WANTLIB} nspr4 plc4 plds4

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests do nothing
NO_REGRESS=	Yes
SUBST_VARS=	LOCALBASE

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf

AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-system-jpeg=${LOCALBASE}	\
		--with-system-png=${LOCALBASE}	\
		--with-system-zlib=/usr/lib	\
		--with-system-nspr		\
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
		--disable-javaxpcom		\
		--enable-xinerama		\
		--enable-svg			\
		--enable-svg-renderer=cairo	\
		--enable-system-cairo		\
		--enable-canvas

# from browser/config/mozconfig
CONFIGURE_ARGS+=--enable-application=xulrunner

MAKE_ENV=	MOZ_CO_PROJECT=xulrunner \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/xulrunner

post-extract:
	@cp ${FILESDIR}/xptc* ${WRKSRC}/xpcom/reflect/xptcall/src/md/unix/

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/xulrunner/app/mozilla.in \
		${WRKSRC}/xulrunner/setup/nsXULAppInstall.js
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
.for dir in include idl
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${WRKSRC}/dist && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${WRKSRC}/dist/public && ${TAR} -chf - nss | \
		${TAR} -xf - -C ${MOZ}/include
.for dir in chrome components defaults greprefs icons res 
	${INSTALL_DATA_DIR} ${MOZ}/${dir}
	@cd ${MOB} && ${TAR} -chf - ${dir} | \
		${TAR} -xf - -C ${MOZ}
.endfor
	@cd ${MOB} && ${TAR} -chf - *.so.?.? | \
		${TAR} -xf - -C ${MOZ}
	@chmod 444 ${MOZ}/*.so.?.? ${MOZ}/components/*.so.?.? ${MOZ}/components/*.js
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/xulrunner/app/mozicon16.xpm ${WRKSRC}/xulrunner/app/mozicon50.xpm ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/xulrunner ${MOB}/xulrunner-config ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_PROGRAM} ${MOB}/regxpcom ${MOB}/xulrunner-bin ${MOB}/mozilla-xremote-client ${MOB}/TestGtkEmbed \
	${MOB}/mangle ${MOB}/nsinstall ${MOB}/shlibsign ${MOB}/xpcshell ${MOB}/xpicleanup ${MOB}/xpidl \
	${MOB}/xpt_dump ${MOB}/xpt_link ${MOB}/xulrunner-stub ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
