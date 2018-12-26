# $OpenBSD: Makefile,v 1.1.1.1 2018/12/26 10:02:13 bentley Exp $

COMMENT=	convert Big5 encoded files to PDF

DISTNAME=	bg5pdf-1.0.0
REVISION=	13
CATEGORIES=	fonts chinese print

# GPL + Aladdin license
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

WANTLIB +=	pdf z

MODULES=	lang/python
RUN_DEPENDS=	fonts/zh-taipeifonts
LIB_DEPENDS=	print/pdflib

CONFIGURE_STYLE=none

WRKDIST=	${WRKDIR}/bg5pdf

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile
	sed -i "s|/usr/bin/python|${MODPY_BIN}|" ${WRKSRC}/bg5pdf

.include <bsd.port.mk>
