# $OpenBSD: Makefile,v 1.2 2003/02/02 08:20:46 sturm Exp $

COMMENT=	"logfile auditing tool"

DISTNAME=	logsentry-1.1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

HOMEPAGE=	http://www.psionic.com/products/logsentry.html

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP= 	Yes

MASTER_SITES=	http://www.psionic.com/downloads/

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/logsentry/logcheck/}

DOC_DIR=	${PREFIX}/share/doc/logsentry
DOC_FILES=	CREDITS INSTALL README README.how.to.interpret README.keywords
CFG_DIR=	${PREFIX}/share/examples/logsentry
CFG_FILES=	logcheck.sh logcheck.hacking logcheck.ignore \
		 logcheck.violations logcheck.violations.ignore

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/src/logtail ${WRKSRC}/src/logtail.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/logtail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOC_DIR}
.endfor
	${INSTALL_DATA_DIR} ${CFG_DIR}
.for i in ${CFG_FILES}
	${INSTALL_DATA} ${WRKSRC}/systems/generic/$i ${CFG_DIR}
.endfor
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},;' \
	 -e 's,%%LOGCHECK_TMP%%,/var/tmp/logsentry,;' \
	 -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},;' ${CFG_DIR}/logcheck.sh

.include <bsd.port.mk> 
