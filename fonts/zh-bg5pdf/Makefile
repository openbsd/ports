# $OpenBSD: Makefile,v 1.5 2015/01/21 06:13:48 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	convert Big5 encoded files to PDF

DISTNAME=	bg5pdf-1.0.0
PKGNAME=	zh-${DISTNAME}
REVISION=	12
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
	perl -pi -e "s|/usr/bin/python|${MODPY_BIN}|" ${WRKSRC}/bg5pdf

.include <bsd.port.mk>
