# $OpenBSD: Makefile,v 1.5 2007/09/15 23:29:58 merdely Exp $

COMMENT=	logfile auditing tool

DISTNAME=	logsentry-1.1.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	security

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP= 	Yes
WANTLIB=		c

MASTER_SITES=	http://www.insecure.dk/distfiles/ \
		ftp://sensimilia.eu.org/pub/software/sys/

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/logsentry/logcheck/}

DOC_DIR=	${PREFIX}/share/doc/logsentry
DOC_FILES=	CREDITS INSTALL README README.how.to.interpret README.keywords
CFG_DIR=	${PREFIX}/share/examples/logsentry
CFG_FILES=	logcheck.sh logcheck.hacking logcheck.ignore \
		logcheck.violations logcheck.violations.ignore

SUBST_VARS+=	DOC_DIR

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/src/logtail ${WRKSRC}/src/logtail.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/logtail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILES}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOC_DIR}
.endfor
	${INSTALL_DATA_DIR} ${CFG_DIR}
.for i in ${CFG_FILES}
	${INSTALL_DATA} ${WRKSRC}/systems/generic/${i} \
		${CFG_DIR}/${i:S/logcheck/logsentry/}
.endfor
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},;' \
	 -e 's,%%LOGSENTRY_TMP%%,/var/tmp/logsentry,;' \
	 -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},;' ${CFG_DIR}/logsentry.sh

.include <bsd.port.mk> 
