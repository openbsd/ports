# $OpenBSD: Makefile,v 1.4 2006/12/06 17:43:31 ajacoutot Exp $

COMMENT=	"total conversion of the Space Hulk board game"

DISTNAME=	spacehulk-1.5-beta1
PKGNAME=	spacehulk-1.5beta1p1
CATEGORIES=	games x11

HOMEPAGE=	http://r.vinot.free.fr/spacehulk/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

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
