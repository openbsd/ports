# $OpenBSD: Makefile,v 1.8 2006/10/27 09:49:27 aanriot Exp $

COMMENT=	"port scan detection and active defense"

DISTNAME=	portsentry-1.2
CATEGORIES=	security

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Common Public License
PERMIT_PACKAGE_CDROM=  	"commercial distribution defend and indemnify clauses"
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	"commercial distribution defend and indemnify clauses"
PERMIT_DISTFILES_FTP= 	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sentrytools/}

WRKDIST=        ${WRKDIR}/portsentry_beta

ALL_TARGET=	openbsd
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

DOCS=	README.install README.methods README.stealth

pre-build:
	@perl -pi -e "s,/usr/local/psionic,${SYSCONFDIR}," \
		${WRKSRC}/portsentry.conf
	@perl -pi -e "s,/usr/local/psionic,${SYSCONFDIR}," \
		${WRKSRC}/portsentry_config.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/portsentry
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/portsentry
	${INSTALL_PROGRAM} ${WRKSRC}/portsentry ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/portsentry.conf \
		${PREFIX}/share/examples/portsentry/
	${INSTALL_DATA} ${WRKSRC}/portsentry.ignore \
		${PREFIX}/share/examples/portsentry/

.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/portsentry/
.endfor

NO_REGRESS=	Yes

.include <bsd.port.mk> 
