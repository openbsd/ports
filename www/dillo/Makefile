# $OpenBSD: Makefile,v 1.48 2014/08/10 09:58:06 espie Exp $

COMMENT =		fast and light graphical web browser

DISTNAME =		dillo-3.0.4
CATEGORIES =		www

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>
HOMEPAGE =		http://www.dillo.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama c
WANTLIB += crypto fltk>=7 fontconfig m pthread ssl
WANTLIB += stdc++ z jpeg>=62 png>=2

MODULES =	converters/libiconv

MASTER_SITES =	http://www.dillo.org/download/

EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	graphics/jpeg \
		graphics/png \
		x11/fltk

# XXX dillo should be patched to use ftp(1)
RUN_DEPENDS =	devel/desktop-file-utils \
		net/wget

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-ipv6 \
			--enable-ssl
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/dillo/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dillo
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/dillo
	${INSTALL_DATA} ${WRKSRC}/dpid/dpidrc ${PREFIX}/share/examples/dillo
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${FILESDIR}/dillo.xpm ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_DATA} ${FILESDIR}/dillo.desktop \
		${PREFIX}/share/applications/dillo.desktop

.include <bsd.port.mk>
