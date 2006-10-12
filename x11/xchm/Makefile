# $OpenBSD: Makefile,v 1.2 2006/10/12 14:13:42 alek Exp $

COMMENT=	"display chm files"

DISTNAME=	xchm-1.9
CATEGORIES=	devel textproc x11

HOMEPAGE=	http://xchm.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xchm/}

LIB_DEPENDS=	chm::devel/chmlib \
		wx_base_xml,wx_gtk2_qa,wx_base_odbc,wx_gtk2_html,wx_base,wx_gtk2_adv,wx_gtk2_xrc,wx_gtk2_core,wx_base_net,wx_gtk2_dbgrid:wxWidgets-gtk2->=2.6.3:x11/wxWidgets

WANTLIB=	m c stdc++ pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
