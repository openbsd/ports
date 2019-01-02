# $OpenBSD: Makefile,v 1.21 2019/01/02 12:44:07 jca Exp $

COMMENT=	display chm files

DISTNAME=	xchm-1.23
REVISION=	3

CATEGORIES=	devel textproc x11

HOMEPAGE=	http://xchm.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xchm/}

LIB_DEPENDS=	devel/chmlib \
		x11/wxWidgets>=3.0.4

RUN_DEPENDS=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} c chm m wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB += wx_gtk3u_core-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0
WANTLIB += wx_gtk3u_xrc-3.0

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/xchm.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
