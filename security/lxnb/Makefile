# Makefile for:		lxnb
# Version required:	0.4
# Date created:		10 Feb 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.12 2002/03/21 21:25:51 espie Exp $

COMMENT=	"NetBus client"

DISTNAME=       linux-netbus-client-v0.4
PKGNAME=	lxnb-0.4

CATEGORIES=	security
NEED_VERSION=	1.515

MAINTAINER=	Dug Song <dugsong@monkey.org>

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
