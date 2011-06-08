# $OpenBSD: Makefile,v 1.21 2011/06/08 17:31:53 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	convert Big5 encoded files to PDF

DISTNAME=	bg5pdf-1.0.0
PKGNAME=	zh-${DISTNAME}
REVISION=	8
CATEGORIES=	chinese print

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL + Aladdin license
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

WANTLIB +=	pdf z

MODULES=	lang/python
RUN_DEPENDS=	chinese/taipeifonts
LIB_DEPENDS=	print/pdflib

CONFIGURE_STYLE=none

WRKDIST=	${WRKDIR}/bg5pdf

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile
	perl -pi -e "s|/usr/bin/python|${MODPY_BIN}|" ${WRKSRC}/bg5pdf

.include <bsd.port.mk>
