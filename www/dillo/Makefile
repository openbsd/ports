# $OpenBSD: Makefile,v 1.28 2008/10/21 07:14:20 ajacoutot Exp $

COMMENT=		fast and light graphical web browser

DISTNAME=		dillo-2.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	www

HOMEPAGE=		http://www.dillo.org/

MAINTAINER=		James Turner <james@bsdgroup.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext Xft Xi Xinerama Xrender c crypto fontconfig m \
		pthread ssl stdc++ z

MODULES=		converters/libiconv

MASTER_SITES=		${HOMEPAGE}download/

EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	::x11/fltk2
LIB_DEPENDS=    jpeg.>=62::graphics/jpeg \
                png.>=2::graphics/png

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ipv6 \
			--disable-threaded-dns
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dillo
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/dillo

.include <bsd.port.mk>
