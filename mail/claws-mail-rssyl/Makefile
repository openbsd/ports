# $OpenBSD: Makefile,v 1.19 2010/10/11 08:15:27 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	RSS aggregator plugin for Claws-mail

VERSION=	0.27
DISTNAME=	rssyl-${VERSION}
PKGNAME=	claws-mail-rssyl-${VERSION}
REVISION=	2
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail
DIST_SUBDIR=	claws

HOMEPAGE=	http://www.claws-mail.org/plugin.php?plugin=rssyl
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	devel/gettext

RUN_DEPENDS=	::mail/claws-mail
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	xml2.>=9::textproc/libxml \
		gdk-x11-2.0.>=1403,gtk-x11-2.0::x11/gtk+2 \
		curl.>=15::net/curl

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo crypto expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 idn m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs ssl xcb
WANTLIB += xcb-render xcb-render-util z gdk_pixbuf-2.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
