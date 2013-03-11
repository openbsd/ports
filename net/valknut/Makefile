# $OpenBSD: Makefile,v 1.15 2013/03/11 11:35:58 espie Exp $

COMMENT=	Graphical Direct-Connect client

DISTNAME=	valknut-0.3.7
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://wxdcgui.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	converters/libiconv x11/qt3
LIB_DEPENDS=	net/dclib \
		graphics/jpeg \
		archivers/bzip2
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
