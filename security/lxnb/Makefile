# Makefile for:		lxnb
# Version required:	0.4
# Date created:		10 Feb 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/07/09 23:41:53 turan Exp $

BROKEN=		patches do not apply

PKGNAME=	lxnb-0.4

CATEGORIES=	security
NEED_VERSION=	1.191

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ns2.crw.se/~tm/projects/lxnb/
DISTNAME=	linux-netbus-client-v0.4
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/${PKGNAME}

pre-build:
	rm -f ${WRKSRC}/lxnetbus

.include <bsd.port.mk>
