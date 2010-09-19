# $OpenBSD: Makefile,v 1.6 2010/09/19 16:03:34 steven Exp $

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview4-4.6
REVISION=	0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

MAINTAINER=	Alexandr Shadchin <alexandr.shadchin@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

WANTLIB += QtGui QtNetwork X11 Xext c djvulibre m pthread stdc++ tiff

MODULES=	x11/qt4

LIB_DEPENDS=	::graphics/djvulibre

BUILD_DEPENDS=	::graphics/ImageMagick \
		::x11/gnome/librsvg
RUN_DEPENDS=	::devel/desktop-file-utils \
		::x11/hicolor-icon-theme

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tiff=${LOCALBASE}
CONFIGURE_ENV+= QTDIR="${MODQT4_QTDIR}" \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
