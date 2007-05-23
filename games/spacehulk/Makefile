# $OpenBSD: Makefile,v 1.5 2007/05/23 06:28:03 ajacoutot Exp $

COMMENT=	"total conversion of the Space Hulk board game"

DISTNAME=	spacehulk-1.5-beta1
PKGNAME=	spacehulk-1.5beta1p2
CATEGORIES=	games x11

HOMEPAGE=	http://r.vinot.free.fr/spacehulk/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m c z stdc++ pthread

MASTER_SITES=	${HOMEPAGE}

MODULES=	x11/qt3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --with-qt-includes=${MODQT_INCDIR} \
		--with-qt-libraries=${MODQT_LIBDIR}
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CXXFLAGS} -I${LOCALBASE}/include/libpng"

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
