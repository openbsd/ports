# $OpenBSD: Makefile,v 1.6 2009/08/10 06:33:44 kili Exp $

COMMENT=	Graphical Direct-Connect client

VERSION=	0.3.7
DISTNAME=	valknut-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net

HOMEPAGE=	http://dcgui.berlios.de/

MAINTAINER=	Andrew Sveikauskas <asveikau@mail.rochester.edu>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes  
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=dcgui/}

MODULES=	converters/libiconv x11/qt3
MODQT_MT=	Yes
LIB_DEPENDS=	dc::net/dclib \
		jpeg::graphics/jpeg \
		bz2::archivers/bzip2
WANTLIB=	ICE SM X11 Xau Xdmcp Xext c crypto m png \
		pthread pthread-stubs ssl stdc++ xcb xml2 z

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MOC=${MODQT_MOC} UIC_PATH=${MODQT_UIC}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
