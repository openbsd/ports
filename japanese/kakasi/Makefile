# $OpenBSD: Makefile,v 1.2 2000/06/11 01:53:47 espie Exp $
# FreeBSD Id: Makefile,v 1.14 1998/04/05 04:46:33 max Exp $

DISTNAME=	kakasi-2.3.1
CATEGORIES=	japanese
NEED_VERSION=	1.300
MASTER_SITES=	ftp://kakasi.namazu.org/pub/kakasi/

PATCH_DIST_STRIP=	-p1

MAINTAINER=	espie@cvs.openbsd.org
HOMEPAGE=	http://kakasi.namazu.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.1 ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.cat ${PREFIX}/man/ja_JP.EUC/cat1/kakasi.0

.include <bsd.port.mk>
