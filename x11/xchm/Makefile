# $OpenBSD: Makefile,v 1.8 2009/05/19 22:03:13 bernd Exp $

COMMENT=	display chm files

DISTNAME=	xchm-1.16
CATEGORIES=	devel textproc x11

HOMEPAGE=	http://xchm.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xchm/}

LIB_DEPENDS=	chm::devel/chmlib \
		wx_base_xml,wx_gtk2_qa,wx_base_odbc,wx_gtk2_html,wx_base,wx_gtk2_adv,wx_gtk2_xrc,wx_gtk2_core,wx_base_net,wx_gtk2_dbgrid,wx_gtk2_aui,wx_gtk2_richtext:wxWidgets-gtk2->=2.6.3:x11/wxWidgets

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB=	m c stdc++ pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/xchm.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
