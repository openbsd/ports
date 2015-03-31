# $OpenBSD: Makefile,v 1.4 2015/03/31 09:45:12 ajacoutot Exp $

COMMENT=	Wen Quan Yi Zen Hei outline font

V=		0.6.26-0
DISTNAME=	wqy-zenhei-$V
PKGNAME=	zh-wqy-zenhei-ttf-${V:S/-/./}
REVISION=	2

CATEGORIES=	fonts x11 chinese

HOMEPAGE=	http://wqy.sourceforge.net/en/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wqy/}

WRKDIST=	${WRKDIR}/wqy-zenhei
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
WQYFONTDIR=	${PREFIX}/share/fonts/wqy

do-install:
	${INSTALL_DATA_DIR} ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WQYFONTDIR}

.include <bsd.port.mk>
