# $OpenBSD: Makefile,v 1.6 2013/03/11 11:10:52 espie Exp $

COMMENT=	disc cover designer

DISTNAME=	discwrapper-1.2.2
REVISION =	0
CATEGORIES=	graphics

HOMEPAGE=	http://discwrapper.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=discwrapper/}

WANTLIB += c m pthread stdc++
WANTLIB += wx_base>=1 wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv
WANTLIB += wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa 
WANTLIB += wx_gtk2_richtext wx_gtk2_xrc
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21

LIB_DEPENDS=	x11/wxWidgets

CONFIGURE_STYLE=gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/DiscWrapperApp.cpp

.include <bsd.port.mk>
