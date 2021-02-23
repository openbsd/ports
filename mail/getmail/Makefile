# $OpenBSD: Makefile,v 1.100 2021/02/23 19:39:28 sthen Exp $

COMMENT=	IMAP/POP3/SDPS mail retriever

MODPY_EGG_VERSION=	5.15
DISTNAME=	getmail-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://pyropus.ca/software/getmail/

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/old-versions/

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

NO_TEST=	Yes

EXDIR=		${PREFIX}/share/examples/getmail

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
