# Makefile for:		lxnb
# Version required:	0.4
# Date created:		10 Feb 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.9 2000/07/14 03:02:34 kevlo Exp $

DISTNAME=       linux-netbus-client-v0.4
PKGNAME=	lxnb-0.4

CATEGORIES=	security
NEED_VERSION=	1.314

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ns2.crw.se/~tm/projects/lxnb/
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/${PKGNAME}

pre-build:
	rm -f ${WRKSRC}/lxnetbus

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lxnetbus ${PREFIX}/bin/lxnb

.include <bsd.port.mk>
