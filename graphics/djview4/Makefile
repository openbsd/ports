# $OpenBSD: Makefile,v 1.3 2009/06/24 22:44:45 sthen Exp $

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview4-4.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

WANTLIB=	ICE SM X11 Xext Xi Xinerama Xrender \
		c m z stdc++ fontconfig freetype pthread \
		glib-2.0 gthread-2.0 iconv intl png jpeg tiff \
		expat gobject-2.0

MODULES=	x11/qt4

LIB_DEPENDS=	djvulibre::graphics/djvulibre \
		QtGui,QtNetwork::x11/qt4

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tiff=${LOCALBASE} \
		--with-qt=${MODQT_LIBDIR}
CONFIGURE_ENV+= QTDIR="${MODQT4_QTDIR}" \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
