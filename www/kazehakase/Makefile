# $OpenBSD: Makefile,v 1.25 2010/10/19 08:02:53 espie Exp $

COMMENT-main=	common files for kazehakase
COMMENT-gecko=	lightweight gecko-based web browser
COMMENT-webkit=	kazehakase webkit backend
CATEGORIES=	www

SHARED_LIBS=	kazehakase 1.0 #.1.0
SHARED_ONLY=	Yes

VERSION=	0.5.8
DISTNAME=	kazehakase-${VERSION}
PKGNAME-main=	kazehakase-common-${VERSION}
REVISION-main=	2
PKGNAME-gecko=	${DISTNAME}
REVISION-gecko=	2
PKGNAME-webkit=	kazehakase-webkit-${VERSION}
REVISION-webkit=2
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=kazehakase/43802/}

HOMEPAGE=	http://kazehakase.sourceforge.jp/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -gecko -webkit

# -webkit only available on archs where webkit builds
ONLY_FOR_ARCHS-webkit = alpha powerpc i386 amd64 hppa sparc64

MODULES=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gecko-engine=libxul \
			--disable-heyper-estraier \
			--disable-shave \
			--without-ruby \
			--without-rgettext

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/xulrunner1.9" \
			CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/nspr"
USE_LIBTOOL =		Yes

USE_GMAKE =		Yes
USE_GROFF =	Yes

FAKE_FLAGS =		sysconfdir=${TRUEPREFIX}/share/examples

BUILD_DEPENDS =		:xulrunner-devel->=1.9.2.6p1:devel/xulrunner/1.9,-devel

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			::devel/desktop-file-utils
RUN_DEPENDS-webkit =	${RUN_DEPENDS} \
			::${BUILD_PKGPATH},-main
RUN_DEPENDS-gecko =	${RUN_DEPENDS} \
			:xulrunner->=1.9.2:devel/xulrunner/1.9,-main \
			::${BUILD_PKGPATH},-main

LIB_DEPENDS =		::x11/gtk+2

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			::x11/dbus-glib \
			::security/gnutls

LIB_DEPENDS-gecko =	${LIB_DEPENDS-main} \
			::${BUILD_PKGPATH},-main

LIB_DEPENDS-webkit =	${LIB_DEPENDS} \
			::www/webkit

WANTLIB =		ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
			Xrandr Xrender Xcomposite Xdamage expat fontconfig \
			freetype m z png cairo iconv intl atk-1.0 gio-2.0 glib-2.0 \
			gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pcre pixman-1 tasn1 \
			pthread-stubs xcb xcb-render xcb-render-util \
			gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

WANTLIB-main =		${WANTLIB} dbus-glib-1 dbus-1 gnutls c gcrypt gpg-error pthread
WANTLIB-gecko =		${WANTLIB} gnutls stdc++ gcrypt gpg-error lib/kazehakase/kazehakase
WANTLIB-webkit =	${WANTLIB} Xt enchant gailutil gcrypt gnutls gpg-error \
			icudata icui18n icuuc jpeg soup-2.4 sqlite3 stdc++ xml2 xslt \
			gstbase-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 \
			gstapp-0.10 webkit-1.0


.include <bsd.port.mk>
