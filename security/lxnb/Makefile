# Makefile for:		lxnb
# Version required:	0.4
# Date created:		10 Feb 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.3 2000/03/23 05:09:33 turan Exp $

PKGNAME=	lxnb-0.4

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ns2.crw.se/~tm/projects/lxnb/
DISTNAME=	linux-netbus-client-v0.4
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/${PKGNAME}

NO_CONFIGURE=	yes

pre-build:
	rm -f ${WRKSRC}/lxnetbus

.include <bsd.port.mk>
