# $OpenBSD: Makefile,v 1.89 2013/07/17 19:35:52 gsoares Exp $

COMMENT=	IMAP/POP3/SDPS mail retriever

MODPY_EGG_VERSION=	4.41.0
DISTNAME=	getmail-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://pyropus.ca/software/getmail/

MAINTAINER=	Tim van der Molen <tbvdm@xs4all.nl>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/old-versions/

MODULES=	lang/python

NO_TEST=	Yes

EXDIR=		${PREFIX}/share/examples/getmail

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
