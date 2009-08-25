# $OpenBSD: Makefile,v 1.5 2009/08/25 17:52:43 jasper Exp $

COMMENT=		OSS replacement for Nomachine's nxclient

DISTNAME=		opennx-0.16
CATEGORIES=		sysutils

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opennx/}

USE_LIBTOOL=		Yes
USE_X11=		Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xmu Xt c m pthread pthread-stubs
WANTLIB += stdc++ xcb

LIB_DEPENDS=		wx_base,wx_base_net,wx_base_xml,wx_gtk2_adv,wx_gtk2_core,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_richtext,wx_gtk2_xrc::x11/wxWidgets
BUILD_DEPENDS=		::archivers/zip \
			::devel/bison \
			::net/samba \
			::print/cups \
			::security/opensc
RUN_DEPENDS=		::devel/desktop-file-utils \
			::print/cups \
			::security/opensc \
			::x11/nx/nxssh

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

DOT_DESKTOP=		opennx-admin-gnome.desktop \
			opennx-wizard-gnome.desktop \
			opennx-gnome.desktop

post-build:
	cd ${WRKSRC}/share/applnk/network-gnome && ${SUBST_CMD} ${DOT_DESKTOP}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
.for file in ${DOT_DESKTOP}
	${INSTALL_DATA} ${WRKSRC}/share/applnk/network-gnome/${file} \
		${PREFIX}/share/applications
.endfor

.include <bsd.port.mk>
