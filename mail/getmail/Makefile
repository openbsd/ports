# $OpenBSD: Makefile,v 1.29 2005/01/03 19:44:09 sturm Exp $

COMMENT=	"POP3 mail retriever"

DISTNAME=	getmail-4.2.6
CATEGORIES=	mail

HOMEPAGE=	http://www.qcc.ca/~charlesc/software/getmail-4/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}old-versions/

MODULES=	lang/python

NO_REGRESS=	Yes

EXDIR=		${PREFIX}/share/examples/getmail

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
