# $OpenBSD: Makefile,v 1.14 2019/07/12 21:15:36 sthen Exp $

COMMENT=	logfile auditing tool

DISTNAME=	logcheck-1.1.1
PKGNAME=	logsentry-1.1.1
REVISION = 	8
CATEGORIES=	security

# GPLv2
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sentrytools/}

NO_TEST=	Yes

DOC_DIR=	${PREFIX}/share/doc/logsentry
DOC_FILES=	CREDITS INSTALL README README.how.to.interpret README.keywords
CFG_DIR=	${PREFIX}/share/examples/logsentry
CFG_FILES=	logcheck.sh logcheck.hacking logcheck.ignore \
		logcheck.violations logcheck.violations.ignore

SUBST_VARS+=	DOC_DIR

do-configure:
	@perl -pi -e 's,logcheck,logsentry,g' ${WRKSRC}/INSTALL
	@perl -pi -e 's,Logcheck,Logsentry,g' ${WRKSRC}/INSTALL
	@perl -pi -e 's,/usr/local/etc,${SYSCONFDIR},g' ${WRKSRC}/INSTALL

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
	 -e 's,%%LOGSENTRY_TMP%%,/var/cache/logsentry,;' \
	 -e 's,%%SYSCONFDIR%%,${SYSCONFDIR},;' ${CFG_DIR}/logsentry.sh

.include <bsd.port.mk> 
