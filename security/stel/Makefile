# $OpenBSD: Makefile,v 1.6 2000/02/13 08:47:40 turan Exp $

DISTNAME=	stel
CATEGORIES=	security
MASTER_SITES=	ftp://idea.sec.dsi.unimi.it/pub/security/cert-it/

NEED_VERSION=	1.195

MAINTAINER=	turan@openbsd.org

LICENSE_TYPE=		"GPL CRYPTO"
PERMIT_PKG_CDROM=	NO
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	NO
PERMIT_DISTF_FTP=	YES

NO_CONFIGURE=	yes
WRKDIST=	${WRKDIR}

do-build:
	@(cd ${WRKSRC}/stel; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKEFILE} bsdi)
	nroff -mandoc ${WRKSRC}/man/stel.1 > ${WRKSRC}/man/stel.cat1
	nroff -mandoc ${WRKSRC}/man/steld.8 > ${WRKSRC}/man/steld.cat8

do-install:
	install -g wheel -m 0555 -o root ${WRKSRC}/stel/stel /usr/local/bin
	install -g wheel -m 0555 -o root ${WRKSRC}/stel/steld /usr/local/sbin
	install -g wheel -m 0444 -o root ${WRKSRC}/man/stel.cat1 /usr/local/man/cat1/stel.0
	install -g wheel -m 0444 -o root ${WRKSRC}/man/steld.cat8 /usr/local/man/cat8/steld.0
	cat ${.CURDIR}/pkg/POST-INSTALL

.include <bsd.port.mk>
