# $OpenBSD: Makefile,v 1.8 2003/02/15 11:45:53 sturm Exp $

COMMENT=	"POP3 mail retriever"

DISTNAME=	getmail-3.0.3
CATEGORIES=	mail

HOMEPAGE=	http://www.qcc.ca/~charlesc/software/getmail-3.0/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

PYTHON_VER=	2.2
RUN_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}

NO_BUILD=	Yes
NO_REGRESS=	Yes

DOCDIR=		${PREFIX}/share/doc/getmail
EXDIR=		${PREFIX}/share/examples/getmail

post-patch:
	@perl -i -p -e "s#/usr/lib/getmail#${PREFIX}/share/getmail#" \
		${WRKDIST}/getmail

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/getmail
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_SCRIPT} ${WRKDIST}/getmail ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/*.py ${PREFIX}/share/getmail
	${INSTALL_DATA} ${WRKDIST}/docs.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/faq.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/getmailrc-example ${EXDIR}/getmailrc
	${INSTALL_DATA} ${WRKDIST}/getmail.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
