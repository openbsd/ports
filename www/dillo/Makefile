# $OpenBSD: Makefile,v 1.32 2009/09/29 07:38:33 benoit Exp $

COMMENT =		fast and light graphical web browser

DISTNAME =		dillo-2.1.1
CATEGORIES =		www

HOMEPAGE =		http://www.dillo.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xcursor Xext Xft Xi Xinerama Xrender c crypto fontconfig \
		m pthread pthread-stubs ssl stdc++ xcb z

MODULES =	converters/libiconv

MASTER_SITES =	${HOMEPAGE}download/

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS =	::x11/fltk2
LIB_DEPENDS =	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png
# XXX dillo should be patched to use ftp(1)
RUN_DEPENDS =	::net/wget

USE_X11 =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-ipv6 \
			--disable-threaded-dns \
			--enable-ssl
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dillo
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/dillo
	${INSTALL_DATA} ${WRKSRC}/dpid/dpidrc ${PREFIX}/share/examples/dillo

.include <bsd.port.mk>
