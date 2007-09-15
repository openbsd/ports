# $FreeBSD: ports/russian/d1489/Makefile,v 1.12 1999/08/31 06:49:57 mharo Exp $
# $OpenBSD: Makefile,v 1.10 2007/09/15 21:23:42 merdely Exp $

COMMENT=	cp866<>koi8-r & cp1251<>koi8-r decoders and font converter

DISTNAME=	d1489-1.4
CATEGORIES=	russian

MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/convert/char/
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/todos ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/a2kfcnv ${PREFIX}/bin
	cd ${PREFIX}/bin; ln -s todos fromdos; ln -s todos fromwin; \
		ln -s todos towin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/d1489
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/d1489

.include <bsd.port.mk>
