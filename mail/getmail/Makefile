# $OpenBSD: Makefile,v 1.23 2004/08/08 14:21:12 sturm Exp $

COMMENT=	"POP3 mail retriever"

DISTNAME=	getmail-3.2.4
CATEGORIES=	mail

HOMEPAGE=	http://www.qcc.ca/~charlesc/software/getmail-4/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE} ${HOMEPAGE}old-versions/

MODULES=	lang/python

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

DOCDIR=		${PREFIX}/share/doc/getmail
EXDIR=		${PREFIX}/share/examples/getmail
GMDIR=		${PREFIX}/share/getmail

HELPERS=	${WRKDIST}/getmail_maildir ${WRKDIST}/getmail_mbox

do-configure:
	@perl -i -p -e "s#/usr/lib/getmail#${GMDIR}#;" \
		-e "s#/usr/bin/python#${LOCALBASE}/bin/python#;" \
		${WRKDIST}/getmail ${HELPERS}

do-install:
	${INSTALL_DATA_DIR} ${GMDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_SCRIPT} ${WRKDIST}/getmail ${PREFIX}/bin
	${INSTALL_SCRIPT} ${HELPERS} ${PREFIX}/libexec
	${INSTALL_DATA} ${WRKDIST}/*.py ${GMDIR}
	${INSTALL_DATA} ${WRKDIST}/docs.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/faq.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/getmailrc-example ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/getmail.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
