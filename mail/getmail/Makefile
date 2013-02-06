# $OpenBSD: Makefile,v 1.86 2013/02/06 14:11:44 sthen Exp $

COMMENT=	IMAP/POP3/SDPS mail retriever

MODPY_EGG_VERSION=	4.37.0
DISTNAME=	getmail-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://pyropus.ca/software/getmail/

MAINTAINER=	Tim van der Molen <tbvdm@xs4all.nl>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/old-versions/

MODULES=	lang/python

NO_REGRESS=	Yes

EXDIR=		${PREFIX}/share/examples/getmail

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
