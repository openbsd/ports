# $OpenBSD: Makefile,v 1.4 2002/12/29 20:31:40 fgsch Exp $

COMMENT=	"logfile auditing tool"

DISTNAME=	logcheck-1.1.1
CATEGORIES=	security

HOMEPAGE=	http://www.psionic.com/abacus/logcheck

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP= 	Yes

MASTER_SITES=	http://www.psionic.com/tools/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/IDS/}

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/share/doc/logcheck
DOC_FILES=	CREDITS INSTALL README README.how.to.interpret README.keywords
CFG_DIR=	${PREFIX}/share/examples/logcheck
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
	 -e 's,%%LOGCHECK_TMP%%,/var/tmp/logcheck,;' \
	 -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},;' ${CFG_DIR}/logcheck.sh

.include <bsd.port.mk> 
