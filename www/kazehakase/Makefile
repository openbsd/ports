# $OpenBSD: Makefile,v 1.13 2009/10/11 11:14:18 landry Exp $

COMMENT-main=	common files for kazehakase
COMMENT-gecko=	lightweight gecko-based web browser
COMMENT-webkit=	kazehakase webkit backend
CATEGORIES=	www

SHARED_LIBS=	kazehakase 0.0 #.1.0
SHARED_ONLY=	Yes

VERSION=	0.5.6
DISTNAME=	kazehakase-${VERSION}
PKGNAME-main=	kazehakase-common-${VERSION}p2
PKGNAME-gecko=	${DISTNAME}p4
PKGNAME-webkit=	kazehakase-webkit-${VERSION}p3
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=kazehakase/33533/}

HOMEPAGE=	http://kazehakase.sourceforge.jp/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -gecko

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "i386" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "amd64"
# XXX give -gecko a chance to build on systems where webkit is not built
MULTI_PACKAGES += -webkit
.endif

MODULES=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gecko-engine=xulrunner \
			--disable-hyper-estraier \
			--without-ruby \
			--without-rgettext

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib/xulrunner"
USE_LIBTOOL =		Yes

FAKE_FLAGS =		sysconfdir=${TRUEPREFIX}/share/examples

BUILD_DEPENDS =		:xulrunner-devel->=1.8:devel/xulrunner/1.8,-devel

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			::devel/desktop-file-utils
RUN_DEPENDS-webkit =	${RUN_DEPENDS} \
			::${BUILD_PKGPATH},-main
RUN_DEPENDS-gecko =	${RUN_DEPENDS} \
			::${BUILD_PKGPATH},-main

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			gnutls::security/gnutls

LIB_DEPENDS-gecko =	${LIB_DEPENDS-main} \
			lib/kazehakase/kazehakase::www/kazehakase,-main \
			xulrunner/xpcom:xulrunner->=1.8:devel/xulrunner/1.8

LIB_DEPENDS-webkit =	${LIB_DEPENDS} \
			webkit-1.0::www/webkit

WANTLIB =		ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
			Xrandr Xrender Xcomposite Xdamage expat fontconfig \
			freetype m z png cairo iconv intl atk-1.0 gio-2.0 glib-2.0 \
			gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 glitz pcre pixman-1 tasn1 \
			pthread-stubs xcb

WANTLIB-main =		${WANTLIB} c gcrypt gpg-error pthread
WANTLIB-gecko =		${WANTLIB} nspr4 plc4 plds4 gcrypt gpg-error
WANTLIB-webkit =	${WANTLIB} Xt enchant gailutil gcrypt gnutls gpg-error \
			icudata icui18n icuuc jpeg soup-2.4 sqlite3 stdc++ xml2 xslt

.include <bsd.port.mk>
