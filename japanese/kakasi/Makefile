# $OpenBSD: Makefile,v 1.6 2001/02/18 23:23:31 brad Exp $
# FreeBSD Id: Makefile,v 1.14 1998/04/05 04:46:33 max Exp $

DISTNAME=	kakasi-2.3.1
CATEGORIES=	japanese
NEED_VERSION=	1.336
MASTER_SITES=	ftp://kakasi.namazu.org/pub/kakasi/

HOMEPAGE=	http://kakasi.namazu.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.1 ${PREFIX}/man/ja_JP.EUC/man1
	${INSTALL_MAN} ${WRKSRC}/doc/kakasi.cat ${PREFIX}/man/ja_JP.EUC/cat1/kakasi.0

.include <bsd.port.mk>
