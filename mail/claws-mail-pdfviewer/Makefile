# $OpenBSD: Makefile,v 1.6 2009/08/10 06:32:42 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	pdf and ps viewer plugin for Claws Mail

VERSION=	0.9.1
DISTNAME=	pdf_viewer-${VERSION}
PKGNAME=	claws-mail-pdfviewer-${VERSION}p2
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail
DIST_SUBDIR=	claws

HOMEPAGE=	http://www.claws-mail.org/plugin.php?plugin=pdf_viewer
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

RUN_DEPENDS=	::mail/claws-mail \
		:ghostscript-*:print/ghostscript/gnu

BUILD_DEPENDS=	${RUN_DEPENDS}

LIB_DEPENDS=	poppler.>=3,poppler-glib.>=3::print/poppler

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb xml2 z

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
