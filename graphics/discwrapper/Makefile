# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:05 sthen Exp $

COMMENT=	disc cover designer

DISTNAME=	discwrapper-1.2.2
REVISION =	4
CATEGORIES=	graphics

HOMEPAGE=	http://discwrapper.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=discwrapper/}

WANTLIB += c m pthread ${COMPILER_LIBCXX}
WANTLIB += wx_base>=1 wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv
WANTLIB += wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa 
WANTLIB += wx_gtk2_richtext wx_gtk2_xrc

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21

LIB_DEPENDS=	x11/wxWidgets

CONFIGURE_STYLE=gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/DiscWrapperApp.cpp

.include <bsd.port.mk>
