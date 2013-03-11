# $OpenBSD: Makefile,v 1.4 2013/03/11 11:06:05 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	convert Big5 encoded files to PDF

DISTNAME=	bg5pdf-1.0.0
PKGNAME=	zh-${DISTNAME}
REVISION=	11
CATEGORIES=	fonts chinese print

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

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
