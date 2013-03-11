# $OpenBSD: Makefile,v 1.2 2013/03/11 11:06:05 espie Exp $

COMMENT=	Wen Quan Yi Zen Hei outline font

V=		0.6.26-0
DISTNAME=	wqy-zenhei-$V
PKGNAME=	zh-wqy-zenhei-ttf-${V:S/-/./}
REVISION=	0

CATEGORIES=	fonts x11 chinese

HOMEPAGE=	http://wqy.sourceforge.net/en/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wqy/}

WRKDIST=	${WRKDIR}/wqy-zenhei
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
WQYFONTDIR=	${PREFIX}/lib/X11/fonts/wqy

do-install:
	${INSTALL_DATA_DIR} ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WQYFONTDIR}

.include <bsd.port.mk>
