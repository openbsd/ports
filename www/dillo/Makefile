# $OpenBSD: Makefile,v 1.42 2013/03/11 11:44:41 espie Exp $

COMMENT =		fast and light graphical web browser

DISTNAME =		dillo-3.0.2
CATEGORIES =		www

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>
HOMEPAGE =		http://www.dillo.org/
REVISION =		1

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama c
WANTLIB += crypto fltk>=7 fontconfig m pthread ssl
WANTLIB += stdc++ z jpeg>=62 png>=2

MODULES =	converters/libiconv

MASTER_SITES =	${HOMEPAGE}download/

EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	graphics/jpeg \
		graphics/png \
		x11/fltk

# XXX dillo should be patched to use ftp(1)
RUN_DEPENDS =	net/wget

USE_GMAKE =		Yes
USE_GROFF =	Yes
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
