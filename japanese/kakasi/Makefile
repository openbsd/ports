# $OpenBSD: Makefile,v 1.1.1.1 2000/04/24 19:45:52 espie Exp $
# FreeBSD Id: Makefile,v 1.14 1998/04/05 04:46:33 max Exp $

DISTNAME=	kakasi-2.3.1
CATEGORIES=	japanese
MASTER_SITES=	ftp://kakasi.namazu.org/pub/kakasi/
FAKE=		Yes

PATCH_DIST_STRIP=	-p1

MAINTAINER=	espie@cvs.openbsd.org
HOMEPAGE=	http://kakasi.namazu.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

GNU_CONFIGURE=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.1 ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.cat ${PREFIX}/man/ja_JP.EUC/cat1/kakasi.0

.include <bsd.port.mk>
