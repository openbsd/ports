# $FreeBSD: ports/russian/d1489/Makefile,v 1.12 1999/08/31 06:49:57 mharo Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/26 11:13:04 form Exp $

DISTNAME=       d1489-1.4
CATEGORIES=     russian
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/convert/char/
EXTRACT_SUFX=   .tgz

MAINTAINER=	form@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/todos ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/a2kfcnv ${PREFIX}/bin
	cd ${PREFIX}/bin; ln -s todos fromdos; ln -s todos fromwin; \
		ln -s todos towin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/d1489
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/d1489

.include <bsd.port.mk>
