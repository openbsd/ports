# $OpenBSD: Makefile,v 1.12 2019/07/14 00:39:39 naddy Exp $

COMMENT=	port scan detection and active defense

DISTNAME=	portsentry-1.2
CATEGORIES=	security
REVISION =	0

# Common Public License
PERMIT_PACKAGE=    	Yes
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

NO_TEST=	Yes

.include <bsd.port.mk> 
