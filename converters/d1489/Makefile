# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:49 sthen Exp $

COMMENT=	cp866<>koi8-r & cp1251<>koi8-r decoders and font converter

DISTNAME=	d1489-1.5.1
REVISION=	0
CATEGORIES=	converters

MASTER_SITES=	http://koi8.pp.ru/dist/
EXTRACT_SUFX=	.tgz

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		c

NO_TEST=	Yes

MAKE_FLAGS=	LOCAL_CFLAGS=-DHAVE_MKSTEMP LOCAL_LDFLAGS=""

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/todos ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/a2kfcnv ${PREFIX}/bin
	cd ${PREFIX}/bin; ln -s todos fromdos; ln -s todos fromwin; \
		ln -s todos towin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/d1489
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/d1489

.include <bsd.port.mk>
