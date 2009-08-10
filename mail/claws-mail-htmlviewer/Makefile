# $OpenBSD: Makefile,v 1.13 2009/08/10 06:32:42 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	HTML renderer plugin for Claws Mail

VERSION=	0.24
DISTNAME=	gtkhtml2_viewer-${VERSION}
PKGNAME=	claws-mail-htmlviewer-${VERSION}p0
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail
DIST_SUBDIR=	claws

HOMEPAGE=	http://www.claws-mail.org/plugin.php?plugin=gtkhtml2
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
LIB_DEPENDS=	xml2::textproc/libxml \
		curl.>=7::net/curl

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr Xcomposite \
		Xrender Xdamage pcre crypto fontconfig freetype m ssl z expat \
		atk-1.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gtk-x11-2.0 idn pixman-1 pthread-stubs xcb

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
