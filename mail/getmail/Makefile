# $OpenBSD: Makefile,v 1.25 2004/10/31 20:30:15 sturm Exp $

COMMENT=	"POP3 mail retriever"

V=		4.2.2
DISTNAME=	getmail-${V}
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

EXDIR=		${PREFIX}/share/examples/getmail-${V}
SUBST_VARS+=	V

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
