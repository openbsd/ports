# $OpenBSD: Makefile,v 1.59 2019/07/12 20:50:18 sthen Exp $

COMMENT =		fast and light graphical web browser

DISTNAME =		dillo-3.0.5
CATEGORIES =		www
REVISION =		4

HOMEPAGE =		https://www.dillo.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama c crypto
WANTLIB += fltk fontconfig iconv jpeg m png pthread ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://www.dillo.org/download/

EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	converters/libiconv \
		graphics/jpeg \
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
