# $OpenBSD: Makefile,v 1.27 2006/10/15 21:45:02 sturm Exp $

COMMENT=	"archive files using LZW compression (.lzh files)"

DISTNAME=	lha-1.14i-ac20050924
PKGNAME=	lha-1.14i.ac20050924
CATEGORIES=	archivers

HOMEPAGE=       http://www.sourceforge.jp/projects/lha/

MAINTAINER=	Yozo Toda <yozo@v007.vaio.ne.jp>

# Restrictive
PERMIT_PACKAGE_CDROM=	"requires advance notification"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"requires advance notification"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=lha/16650/}

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/man/lha.n ${PREFIX}/man/ja_JP.EUC/man1/lha.1

.include <bsd.port.mk>
