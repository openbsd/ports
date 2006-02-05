# New ports collection makefile for:    upsd
# Version required:     2.0.1.6
# Date created:         22 Nov 1999
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.15 2006/02/05 11:44:12 steven Exp $
#

COMMENT=	"APC Smart UPS Monitoring Daemon"

DISTNAME=	upsd-2.0.1.6
PKGNAME=	upsd-2.0
CATEGORIES=	sysutils

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	"missing license"
PERMIT_PACKAGE_FTP=	"missing license"
PERMIT_DISTFILES_CDROM=	"missing license"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

WRKDIST=	${WRKDIR}/${PKGNAME}

pre-build:
	@perl -pi -e 's:%%SYSCONFDIR%%:${SYSCONFDIR}:' \
		${WRKSRC}/config.h
	@mv ${WRKSRC}/config.h ${WRKSRC}/conf.h.orig
	@sed -e "s!@prefix@!${PREFIX}!g" ${WRKSRC}/conf.h.orig > ${WRKSRC}/conf.h

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/upsd ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/upsd
	${INSTALL_DATA} ${WRKSRC}/sample/upsd.conf ${PREFIX}/share/examples/upsd/upsd.conf-sample

.include <bsd.port.mk>
