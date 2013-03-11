# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:49 espie Exp $

COMMENT=		passive web application security assessment tool

DISTNAME=		ratproxy-1.58
REVISION=		0
CATEGORIES=		www security

HOMEPAGE=		http://ratproxy.googlecode.com/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto ssl

MASTER_SITES=		${HOMEPAGE}/files/

RUN_DEPENDS=		shells/bash

WRKDIST=		${WRKDIR}/ratproxy/

NO_TEST=		Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/ratproxy-report.sh ${WRKSRC}/ssl.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ratproxy ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/ratproxy-report.sh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ratproxy/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ratproxy/
	${INSTALL_DATA_DIR} ${PREFIX}/share/ratproxy/
.for d in keyfile.pem messages.list ratproxy-back.png
	${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/ratproxy/
.endfor

.include <bsd.port.mk>
