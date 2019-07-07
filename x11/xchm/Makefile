# $OpenBSD: Makefile,v 1.22 2019/07/07 10:58:53 sthen Exp $

COMMENT=	display chm files

V=		1.30
DISTNAME=	xchm-$V

CATEGORIES=	devel textproc x11

HOMEPAGE=	https://github.com/rzvncj/xCHM

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c chm m wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0

MASTER_SITES=	https://github.com/rzvncj/xCHM/releases/download/$V/

LIB_DEPENDS=	devel/chmlib \
		x11/wxWidgets>=3.0.4

RUN_DEPENDS=	devel/desktop-file-utils

COMPILER=	base-clang ports-gcc base-gcc

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/xchm.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
