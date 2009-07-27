# $OpenBSD: Makefile.inc,v 1.1.1.1 2009/07/27 21:35:56 martynas Exp $

#
# For legacy reasons (smooth updates), directory is xulrunner.
# New versions of xulrunner will actually use xulrunnerX.Y.
#
DIRECTORY?=		xulrunner

ONLY_FOR_ARCHS+=	alpha amd64 arm i386 powerpc sparc sparc64

COMMENT-main=		standalone XUL/XPCOM runtime environment
COMMENT-devel=		devel files for Gecko

DISTNAME=		mozilla
PKGNAME=		xulrunner-${VERSION}
PKGNAME-main=		xulrunner-${VERSION}${PATCHLEVEL}
PKGNAME-devel=		xulrunner-devel-${VERSION}

CATEGORIES+=		devel

HOMEPAGE=		http://developer.mozilla.org/en/docs/XULRunner

MULTI_PACKAGES+=	-main -devel

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES+=		http://releases.mozilla.org/pub/mozilla.org/xulrunner/releases/${VERSION}/source/ \
			http://mirrors.protection.cx/~martynas/mozilla/xulrunner/
DISTFILES+=		xulrunner-${VERSION}-source.tar.bz2

MODULES+=		devel/gettext
BUILD_DEPENDS+=		:zip->=2.3:archivers/zip
LIB_DEPENDS+=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			nspr4.>=20,plc4.>=20,plds4.>=20:nspr->=4.7:devel/nspr \
			nss3.>=22,smime3.>=22,softokn3.>=22,ssl3.>=22:nss->=3.12:security/nss
WANTLIB+=		c glib-2.0 m pthread stdc++

WANTLIB-main+=		${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
			Xext Xfixes Xft Xi Xinerama Xrandr Xrender Xt atk-1.0 \
			cairo expat fontconfig freetype glitz gmodule-2.0 \
			gobject-2.0 gthread-2.0 jpeg pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pixman-1 png z gio-2.0

LIB_DEPENDS-devel+=	${MODGETTEXT_LIB_DEPENDS} IDL-2::devel/libIDL \
			${DIRECTORY}/mozjs,${DIRECTORY}/xpcom,${DIRECTORY}/xul:${PKGNAME-main}:devel/xulrunner/${VERSION:R:R},-main
WANTLIB-devel+=		${WANTLIB} nspr4 plc4 plds4

VMEM_WARNING=		Yes

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

MODGNU_CONFIG_GUESS_DIRS+=	${WRKSRC}/build/autoconf

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--with-system-jpeg=${LOCALBASE}	\
			--with-system-zlib=/usr/lib	\
			--with-system-nspr		\
			--with-system-nss		\
			--with-pthreads			\
			--enable-xft			\
			--disable-optimize		\
			--disable-debug			\
			--disable-freetypetest		\
			--disable-mochitest		\
			--disable-libIDLtest		\
			--disable-glibtest		\
			--disable-tests			\
			--disable-pedantic		\
			--disable-installer		\
			--disable-updater		\
			--disable-gnomeui		\
			--disable-gnomevfs		\
			--disable-dbus			\
			--disable-javaxpcom		\
			--enable-xinerama		\
			--enable-svg			\
			--enable-svg-renderer=cairo	\
			--enable-system-cairo		\
			--enable-system-sqlite		\
			--enable-canvas			\
			--enable-application=xulrunner	\
			--enable-extensions=default,cookie,permissions

MAKE_ENV+=		MOZ_CO_PROJECT=xulrunner \
			LD_LIBRARY_PATH="${WRKSRC}/dist/bin" \
			BUILD_OFFICIAL=1 \
			MOZILLA_OFFICIAL=1 \
			SO_VERSION="${SO_VERSION}" \
			mozappdir="${LOCALBASE}/${DIRECTORY}"
CONFIGURE_ENV+=		${MAKE_ENV} \
			topsrcdir=${WRKSRC}
