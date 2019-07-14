# $OpenBSD: Makefile,v 1.39 2019/07/14 00:39:34 naddy Exp $

COMMENT=	archive files using LZW compression (.lzh files)

DISTNAME=	lha-1.14i-ac20050924p1
PKGNAME=	lha-1.14i.ac20050924.1
REVISION=	3
CATEGORIES=	archivers

HOMEPAGE=       https://lha.osdn.jp/

MAINTAINER=	Yozo Toda <yozo@v007.vaio.ne.jp>

# Restrictive
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_OSDN_JP:=lha/22231/}

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/man/lha.n ${PREFIX}/man/ja_JP.EUC/man1/lha.1

.include <bsd.port.mk>
