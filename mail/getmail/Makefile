# $OpenBSD: Makefile,v 1.97 2019/07/12 20:47:27 sthen Exp $

COMMENT=	IMAP/POP3/SDPS mail retriever

MODPY_EGG_VERSION=	5.7
DISTNAME=	getmail-${MODPY_EGG_VERSION}
CATEGORIES=	mail
REVISION=	0

HOMEPAGE=	http://pyropus.ca/software/getmail/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/old-versions/

MODULES=	lang/python

NO_TEST=	Yes

EXDIR=		${PREFIX}/share/examples/getmail

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
