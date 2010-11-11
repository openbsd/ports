# $OpenBSD: Makefile,v 1.10 2010/11/11 17:20:28 espie Exp $

COMMENT=	Graphical Direct-Connect client

DISTNAME=	valknut-0.3.7
REVISION=	1
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
LIB_DEPENDS=	::net/dclib \
		::graphics/jpeg \
		::archivers/bzip2
WANTLIB=	ICE SM X11 Xau Xdmcp Xext c crypto m png \
		pthread pthread-stubs ssl stdc++ xcb xml2 z \
		dc jpeg bz2

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MOC=${MODQT_MOC} UIC_PATH=${MODQT_UIC}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
