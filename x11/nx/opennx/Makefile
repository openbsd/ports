# $OpenBSD: Makefile,v 1.1.1.1 2008/06/13 17:14:42 jasper Exp $

COMMENT=		OSS replacement for Nomachine's nxclient

DISTNAME=		opennx-0.14
CATEGORIES=		sysutils

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opennx/}

USE_LIBTOOL=		Yes
USE_X11=		Yes

WANTLIB=		X11 Xmu c m pthread stdc++

LIB_DEPENDS=		wx_base,wx_base_net,wx_base_xml,wx_gtk2_adv,wx_gtk2_core,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_xrc::x11/wxWidgets
BUILD_DEPENDS=		::devel/bison \
			::net/samba \
			::print/cups
RUN_DEPENDS=		::devel/desktop-file-utils \
			::print/cups \
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
