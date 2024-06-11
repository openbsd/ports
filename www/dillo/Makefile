COMMENT =		fast and light graphical web browser

CATEGORIES =		www

DIST_TUPLE +=		github dillo-browser dillo v3.1.1 .

HOMEPAGE =		https://dillo-browser.github.io/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama c crypto
WANTLIB += fltk fontconfig iconv jpeg m png pthread ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc


EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	converters/libiconv \
		graphics/jpeg \
		graphics/png \
		x11/fltk

# XXX dillo should be patched to use ftp(1)
RUN_DEPENDS =	devel/desktop-file-utils \
		net/wget \
		x11/gtk+4,-guic

USE_GMAKE =		Yes
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS =	--enable-ipv6 \
			--enable-tls
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -fcommon" \
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
