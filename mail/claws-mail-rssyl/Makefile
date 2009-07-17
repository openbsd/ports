# $OpenBSD: Makefile,v 1.12 2009/07/17 17:05:11 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	RSS aggregator plugin for Claws-mail

VERSION=	0.25
DISTNAME=	rssyl-${VERSION}
PKGNAME=	claws-mail-rssyl-${VERSION}
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
LIB_DEPENDS=	xml2.>=9::textproc/libxml

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage pcre \
		Xrender crypto fontconfig freetype m ssl z expat \
		atk-1.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gtk-x11-2.0 curl idn pixman-1

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
