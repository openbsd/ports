# $OpenBSD: Makefile,v 1.11 2000/06/05 01:42:48 espie Exp $

DISTNAME=	stel
CATEGORIES=	security
NEED_VERSION=	1.210
MASTER_SITES=	ftp://idea.sec.dsi.unimi.it/pub/security/cert-it/


MAINTAINER=	turan@openbsd.org

LICENSE_TYPE=		"GPL CRYPTO"
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

do-build:
	@cd ${WRKSRC}/stel; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} bsdi
	nroff -mandoc ${WRKSRC}/man/stel.1 > ${WRKSRC}/man/stel.cat1
	nroff -mandoc ${WRKSRC}/man/steld.8 > ${WRKSRC}/man/steld.cat8

do-install:
	install -g wheel -m 0555 -o root ${WRKSRC}/stel/stel ${PREFIX}/bin
	install -g wheel -m 0555 -o root ${WRKSRC}/stel/steld ${PREFIX}/sbin
	install -g wheel -m 0444 -o root ${WRKSRC}/man/stel.cat1 ${PREFIX}/man/cat1/stel.0
	install -g wheel -m 0444 -o root ${WRKSRC}/man/steld.cat8 ${PREFIX}/man/cat8/steld.0

.include <bsd.port.mk>
