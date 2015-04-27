# $OpenBSD: Makefile,v 1.6 2015/04/27 18:30:46 rpe Exp $

COMMENT=	mail anomalies in the system logfiles to the administrator

V=		1.3.17
DISTNAME=	logcheck_${V}
PKGNAME=	logtail-${V}
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	sysutils

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://ftp.de.debian.org/debian/pool/main/l/logcheck/

WRKDIST=	${WRKDIR}/${DISTNAME:S/_/-/}
NO_BUILD=	Yes
DTR=		10-savelog 20-logrotate 30-logrotate-dateext

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/logtail ${PREFIX}/bin/logtail
	${SUBST_PROGRAM} ${WRKSRC}/src/logtail2 ${PREFIX}/bin/logtail2
	${INSTALL_DATA_DIR} ${PREFIX}/share/logtail/detectrotate
.for i in ${DTR}
	${INSTALL_SCRIPT} ${WRKSRC}/src/detectrotate/${i}.dtr \
		${PREFIX}/share/logtail/detectrotate
.endfor
	${INSTALL_DATA} ${WRKSRC}/docs/logtail.8 ${PREFIX}/man/man8/logtail.8
	${INSTALL_DATA} ${WRKSRC}/docs/logtail2.8 ${PREFIX}/man/man8/logtail2.8

.include <bsd.port.mk>
