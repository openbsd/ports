# $OpenBSD: Makefile,v 1.11 2010/09/03 17:19:23 sthen Exp $

COMMENT=	view, decode and encode DjVu files

DISTNAME=	djvulibre-3.5.23
SHARED_LIBS=	djvulibre 23.0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

FLAVORS=	no_x11
FLAVOR?=

WANTLIB=	c m jpeg pthread stdc++ tiff z

LIB_DEPENDS=	::graphics/jpeg \
		::graphics/tiff

BUILD_DEPENDS=	::graphics/ImageMagick \
		::x11/gnome/librsvg
RUN_DEPENDS=	::x11/hicolor-icon-theme

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-jpeg=${LOCALBASE} \
		--with-tiff=${LOCALBASE} \
		--with-extra-libraries=${LOCALBASE}/lib \
		--disable-i18n

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=--without-x
.else
MODULES=	x11/qt3
RUN_DEPENDS+=	::devel/desktop-file-utils
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xext Xau Xdmcp pthread-stubs xcb
CONFIGURE_ARGS+=--enable-djview
CONFIGURE_ENV+= QT_CFLAGS="-I${MODQT_INCDIR}" \
		QT_LIBS="-L${MODQT_LIBDIR} -lqt-mt"
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
