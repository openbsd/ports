# New ports collection makefile for:    upsd
# Version required:     2.0.1.6
# Date created:         22 Nov 1999
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.11 2001/05/06 03:59:10 lebel Exp $
#

COMMENT=	"APC Smart UPS Monitoring Daemon"

DISTNAME=	upsd-2.0.1.6
PKGNAME=	upsd-2.0
CATEGORIES=	sysutils
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	"missing license"
PERMIT_PACKAGE_FTP=	"missing license"
PERMIT_DISTFILES_CDROM=	"missing license"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/upsd-2.0

pre-build:
	@mv ${WRKSRC}/config.h ${WRKSRC}/conf.h.orig
	@sed -e "s!@prefix@!${PREFIX}!g" ${WRKSRC}/conf.h.orig > ${WRKSRC}/conf.h

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/upsd ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/upsd
	${INSTALL_DATA} ${WRKSRC}/sample/upsd.conf ${PREFIX}/lib/upsd/upsd.conf.sample

.include <bsd.port.mk>
