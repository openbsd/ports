# New ports collection makefile for:    upsd
# Version required:     2.0.1.6
# Date created:         22 Nov 1999
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.6 2000/03/24 22:12:01 espie Exp $
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

post-install:
	if [ ! -f /etc/upsd.conf ] ; then \
		${INSTALL} -c -o ${BINOWN} -g ${BINGRP} -m 644 \
			${FILESDIR}/upsd.conf /etc/upsd.conf; \
	fi

.include <bsd.port.mk>
