# $OpenBSD: Makefile,v 1.6 2001/09/19 15:20:12 espie Exp $
V=0.5.1
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.458
COMMENT=	"KDE style engine"
HOMEPAGE=	http://www.mosfet.org/liquid.html
MASTER_SITES=	http://www.mosfet.org/
DISTNAME=	mosfet-liquid$V
PKGNAME=	mosfet-liquid-$V
MAINTAINER=	Marc Espie <espie@openbsd.org>

BUILD_DEPENDS=	::devel/autoconf ::devel/automake

MODULES=	qt2
LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		kdecore.3::x11/kde/libs2 \
		kwin::x11/kde/base2

USE_GMAKE=		Yes

# QPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	"Not without the source"


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--enable-mitshm

CONFIGURE_ENV=		UIC_NOT_NEEDED=true
CONFIGURE_ENV+=		ac_aux_files=''
MAKE_ENV=		${CONFIGURE_ENV}

pre-configure:
	cd ${WRKDIST} && ${MAKE_PROGRAM} -f Makefile.cvs

.include <bsd.port.mk>
