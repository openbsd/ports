# $OpenBSD: Makefile,v 1.72 2010/08/30 17:46:57 fgsch Exp $

COMMENT=	IMAP/POP3/SDPS mail retriever

V=		4.17.0
DISTNAME=	getmail-$V
REVISION =	1
CATEGORIES=	mail

HOMEPAGE=	http://pyropus.ca/software/getmail/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}old-versions/

MODULES=	lang/python

NO_REGRESS=	Yes

SUBST_VARS=	V
EXDIR=		${PREFIX}/share/examples/getmail

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
