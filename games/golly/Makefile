# $OpenBSD: Makefile,v 1.10 2017/09/23 10:26:45 sthen Exp $

COMMENT =	game of life simulator

PKGNAME =	golly-2.7
REVISION =	2
DISTNAME =	${PKGNAME}-src
WRKSRC =	${WRKDIST}/gui-wx/configure
CATEGORIES =	games math
MAINTAINER =	Donovan Watteau <tsoomi@gmail.com>

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=golly/}

HOMEPAGE =	http://golly.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
LIB_DEPENDS =		x11/wxWidgets
RUN_DEPENDS =		devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} c m wx_base wx_base_net wx_base_odbc
WANTLIB += wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB += wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc z

# Note: perl and python are loaded with wxDynamicLibrary.Load(), and
# python needs libutil to prevent undefined openpty and forkpty symbols.
WANTLIB += perl util ${MODPY_WANTLIB}

CONFIGURE_STYLE =		gnu
CONFIGURE_ARGS =		--enable-unicode
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
