# $OpenBSD: Makefile,v 1.1.1.1 2001/08/21 16:25:09 espie Exp $
V=0.5
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.402
COMMENT=	"KDE style engine"
HOMEPAGE=	http://www.mosfet.org/liquid.html
MASTER_SITES=	http://www.mosfet.org/
DISTNAME=	mosfet-liquid$V
PKGNAME=	mosfet-liquid-$V
MAINTAINER=	Marc Espie <espie@openbsd.org>

BUILD_DEPENDS=	autoconf::devel/autoconf \
		automake::devel/automake

LIB_DEPENDS= 	qt.2.::x11/qt2 \
		png.2.::graphics/png \
		jpeg.62.::graphics/jpeg \
		tiff.35.::graphics/tiff \
		kdecore.3.::x11/kde/libs2

USE_GMAKE=Yes

# QPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGES_CDROM=	"Not without the source"


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--enable-mitshm

CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2
MAKE_ENV=		${CONFIGURE_ENV}

pre-configure:
	cd ${WRKDIST} && ${MAKE_PROGRAM} -f Makefile.cvs

.include <bsd.port.mk>
