# $OpenBSD: Makefile,v 1.1.1.1 2011/07/19 09:14:21 jasper Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wqy/}

WRKDIST=	${WRKDIR}/wqy-zenhei
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
WQYFONTDIR=	${PREFIX}/lib/X11/fonts/wqy

do-install:
	${INSTALL_DATA_DIR} ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${WQYFONTDIR}

.include <bsd.port.mk>
