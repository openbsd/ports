# $OpenBSD: Makefile,v 1.25 2005/12/04 17:05:50 alek Exp $

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

MASTER_SITES=	http://keihanna.dl.sourceforge.jp/lha/16650/ \
		http://osdn.dl.sourceforge.jp/lha/16650/

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/man/lha.n ${PREFIX}/man/ja_JP.EUC/man1/lha.1


.include <bsd.port.mk>
