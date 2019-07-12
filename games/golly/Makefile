# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:19 sthen Exp $

COMMENT =	game of life simulator

PKGNAME =	golly-3.2
REVISION =	2
DISTNAME =	${PKGNAME}-src
WRKSRC =	${WRKDIST}/gui-wx/configure
CATEGORIES =	games math

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=golly/}

HOMEPAGE =	http://golly.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
LIB_DEPENDS =		x11/wxWidgets>=3.0.4
RUN_DEPENDS =		devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL c m wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += z
# Note: perl and python are loaded with wxDynamicLibrary.Load(), and
# python needs libutil to prevent undefined openpty and forkpty symbols.
WANTLIB += perl util ${MODPY_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =		gnu
CONFIGURE_ARGS =		--enable-unicode
CONFIGURE_ENV =			CPPFLAGS="-I${X11BASE}/include" \
				LDFLAGS="-L${X11BASE}/lib -R${X11BASE}/lib ${LDFLAGS}"
SEPARATE_BUILD =		Yes

FAKE_FLAGS =		dist_doc_DATA="" \
			docdir=""

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/../icons/appicon.xpm \
		${PREFIX}/share/pixmaps/golly.xpm
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/golly.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
