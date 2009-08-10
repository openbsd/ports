# $OpenBSD: Makefile,v 1.8 2009/08/10 06:31:44 kili Exp $

COMMENT=	view, decode and encode DjVu files

DISTNAME=	djvulibre-3.5.21
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	djvulibre 21.0
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

FLAVORS=	no_x11
FLAVOR?=

WANTLIB=	c m pthread stdc++ z

MODULES=	converters/libiconv

LIB_DEPENDS=	jpeg::graphics/jpeg \
		tiff::graphics/tiff 

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-jpeg=${LOCALBASE} \
		--with-tiff=${LOCALBASE} \
		--with-extra-libraries=${LOCALBASE}/lib \
		--disable-i18n
CONFIGURE_ENV=	TIFF_LIBS="-L${LOCALBASE}/lib -ltiff -lz -ljpeg"

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=--without-x
.else
MODULES+=	x11/qt3
MODQT_MT=	Yes
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xext Xau Xdmcp pthread-stubs xcb
CONFIGURE_ARGS+=--with-qt=${MODQT_LIBDIR}
CONFIGURE_ENV+= QT_CFLAGS="-I${MODQT_INCDIR}" \
		QT_LIBS="-L${MODQT_LIBDIR} -lqt-mt"
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
