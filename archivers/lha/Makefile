# $OpenBSD: Makefile,v 1.35 2016/06/05 11:02:25 sthen Exp $

COMMENT=	archive files using LZW compression (.lzh files)

DISTNAME=	lha-1.14i-ac20050924p1
PKGNAME=	lha-1.14i.ac20050924.1
REVISION=	1
CATEGORIES=	archivers

HOMEPAGE=       https://lha.osdn.jp/

MAINTAINER=	Yozo Toda <yozo@v007.vaio.ne.jp>

# Restrictive
PERMIT_PACKAGE_CDROM=	requires advance notification
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_OSDN_JP:=lha/22231/}

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/man/lha.n ${PREFIX}/man/ja_JP.EUC/man1/lha.1

.include <bsd.port.mk>
