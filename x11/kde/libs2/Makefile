# $OpenBSD: Makefile,v 1.5 2000/11/02 00:02:35 espie Exp $

CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.305
VERSION=		2.0
DISTNAME=		kdelibs-${VERSION}
DIST_SUBDIR=		kde

MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/distribution/tar/generic/src/
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS= 	qt.2.::x11/qt2 \
		png.1.::graphics/png \
		jpeg.62.::graphics/jpeg \
		tiff.35.::graphics/tiff \
		audiofile.::devel/libaudiofile


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-threading
# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes


.include <bsd.port.mk>
