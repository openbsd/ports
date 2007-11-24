# $OpenBSD: Makefile,v 1.1.1.1 2007/11/24 13:23:26 steven Exp $

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview4-4.2-2
PKGNAME=	djview4-4.2
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}
WRKDIST=	${WRKDIR}/djview4-4.2

WANTLIB=	ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender \
		c crypto m ssl z stdc++ fontconfig freetype pthread \
		glib-2.0 gthread-2.0 iconv intl png jpeg tiff

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
