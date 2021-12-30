# $OpenBSD: Makefile,v 1.13 2021/12/30 16:37:47 ajacoutot Exp $

COMMENT=	display new entries in system logfiles since last run

V=		1.3.23
DISTNAME=	logcheck_${V}
PKGNAME=	logtail-${V}
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	sysutils

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/l/logcheck/}
WRKDIST=	${WRKDIR}/logcheck
FIX_EXTRACT_PERMISSIONS= Yes

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
