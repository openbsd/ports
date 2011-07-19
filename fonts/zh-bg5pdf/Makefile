# $OpenBSD: Makefile,v 1.2 2011/07/19 19:19:14 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	convert Big5 encoded files to PDF

DISTNAME=	bg5pdf-1.0.0
PKGNAME=	zh-${DISTNAME}
REVISION=	10
CATEGORIES=	fonts chinese print

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL + Aladdin license
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

WANTLIB +=	pdf z

MODULES=	lang/python
RUN_DEPENDS=	fonts/zh-taipeifonts
LIB_DEPENDS=	print/pdflib

CONFIGURE_STYLE=none

WRKDIST=	${WRKDIR}/bg5pdf

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile
	perl -pi -e "s|/usr/bin/python|${MODPY_BIN}|" ${WRKSRC}/bg5pdf

.include <bsd.port.mk>
