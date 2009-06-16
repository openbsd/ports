# $OpenBSD: Makefile,v 1.35 2009/06/16 01:14:16 sthen Exp $

ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc sparc64

COMMENT-main=	standalone XUL/XPCOM runtime environment
COMMENT-devel=	devel files for Gecko

VER=		1.8.1.19
DISTNAME=	mozilla
PKGNAME=	xulrunner-${VER}
PKGNAME-main=	xulrunner-${VER}p2
# NOTE: Must bump package name if -main changes, since -devel depends
# on -main (plist changes).
PKGNAME-devel=	xulrunner-devel-${VER}p2
SO_VERSION=	2.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in auth autoconfig cookie fileview gtkembedmoz mozjs nullplugin \
	permissions pipboot pipnss pippki system-pref transformiix \
	universalchardet unixprintplugin websrvcs xmlextras xpcom xul xulutil
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

CATEGORIES=	devel

HOMEPAGE=	http://developer.mozilla.org/en/docs/XULRunner

MULTI_PACKAGES=	-main -devel

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mirrors.protection.cx/~martynas/mozilla/xulrunner/
DISTFILES=	xulrunner-${VER}${EXTRACT_SUFX}

MODULES=	devel/gettext
BUILD_DEPENDS=	:zip->=2.3:archivers/zip
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		nspr4.>=17,plc4.>=17,plds4.>=17:nspr->=4.6.4p1:devel/nspr \
		nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss
WANTLIB=	c gio-2.0 glib-2.0 m pthread stdc++

WANTLIB-main=	${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xft Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo expat \
		fontconfig freetype glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		jpeg pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png z

LIB_DEPENDS-devel= ${MODGETTEXT_LIB_DEPENDS} IDL-2::devel/libIDL \
		xulrunner/mozjs,xulrunner/xpcom,xulrunner/xul:${PKGNAME-main}:devel/xulrunner,-main
WANTLIB-devel=	${WANTLIB} nspr4 plc4 plds4

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
# Regression tests do nothing
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build/autoconf

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
		--disable-javaxpcom		\
		--enable-xinerama		\
		--enable-svg			\
		--enable-svg-renderer=cairo	\
		--enable-system-cairo		\
		--enable-canvas			\
		--enable-application=xulrunner	\
		--enable-extensions=default,cookie,permissions

MAKE_ENV=	MOZ_CO_PROJECT=xulrunner \
		LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
		BUILD_OFFICIAL=1 \
		MOZILLA_OFFICIAL=1 \
		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=	${MAKE_ENV} \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig" \
		topsrcdir=${WRKSRC}

MOB=		${WRKSRC}/dist/bin
MOZ=		${PREFIX}/xulrunner

DATADIRS=	chrome defaults icons res components greprefs plugins
DISTDIRS=	idl include
TOOLS=		TestGtkEmbed xpcshell xpt_link mozilla-xremote-client \
		xpicleanup xulrunner-bin nsinstall xpidl xulrunner-stub \
		regxpcom xpt_dump

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g; s|_X11BASE_|${X11BASE}|g' \
		${WRKSRC}/js/src/xpconnect/shell/Makefile.in \
		${WRKSRC}/xulrunner/app/mozilla.in \
		${WRKSRC}/xulrunner/setup/nsXULAppInstall.js
	@perl -pi -e 's|_SO_VERSION_|${SO_VERSION}|g' \
		${WRKSRC}/xpcom/components/nsNativeComponentLoader.cpp

do-install:
	cd ${WRKSRC}/dist && \
		find ${DISTDIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DISTDIRS} ! -type d \
			-exec ${INSTALL_DATA} {} ${MOZ}/{} \;
	cd ${MOB} && \
		find ${DATADIRS} -type d \
			-exec ${INSTALL_DATA_DIR} ${MOZ}/{} \; && \
		find ${DATADIRS} ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MOZ}/{} \; && \
		${INSTALL_PROGRAM} ${TOOLS} ${MOZ}
	${INSTALL_DATA} ${MOB}/*.so.${SO_VERSION} ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/dist/lib/libxpcomglue.a \
		${WRKSRC}/dist/lib/libxpcomglue_s.a ${MOZ}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${MOZ}
	${INSTALL_SCRIPT} ${MOB}/xulrunner \
		${MOB}/xulrunner-config ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${MOB}/run-mozilla.sh ${MOZ}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/build/unix/*.pc \
		${FILESDIR}/xulrunner-embedding.pc ${PREFIX}/lib/pkgconfig
	@perl -pi -e 's|!!PREFIX!!|${TRUEPREFIX}|g; s|!!VERSION!!|${VER}|g' \
		${PREFIX}/lib/pkgconfig/xulrunner-embedding.pc

.include <bsd.port.mk>
