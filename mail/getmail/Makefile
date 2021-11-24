# $OpenBSD: Makefile,v 1.101 2021/11/24 09:06:39 sthen Exp $

COMMENT=	IMAP/POP3/SDPS mail retriever

MODPY_EGG_VERSION=	5.16
DISTNAME=	getmail-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://pyropus.ca/software/getmail/

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/old-versions/

MODULES=	lang/python

# No Python 3 support as of 5.16
# https://pyropus.ca/software/getmail/documentation.html#python3
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

NO_TEST=	Yes

EXDIR=		${PREFIX}/share/examples/getmail

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
