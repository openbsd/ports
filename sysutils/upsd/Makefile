# New ports collection makefile for:    upsd
# Version required:     2.0.1.6
# Date created:         22 Nov 1999
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.8 2000/06/09 20:58:00 espie Exp $
#

DISTNAME=	upsd-2.0.1.6
PKGNAME=	upsd-2.0
CATEGORIES=	sysutils
NEED_VERSION=	1.191
MASTER_SITES=	ftp://www.ww.net/pub/wildwind/upsd/ \
		http://www.cre8tivegroup.com/ \
		ftp://ftp.sw.ru/pub/unix/upsd/

MAINTAINER=	kevlo@openbsd.org

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
	${INSTALL_DATA} ${FILESDIR}/upsd.conf ${PREFIX}/lib/upsd/upsd.conf.sample

.include <bsd.port.mk>
