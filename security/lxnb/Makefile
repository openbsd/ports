# Makefile for:		lxnb
# Version required:	0.4
# Date created:		10 Feb 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 2000/02/10 22:08:25 dugsong Exp $

PKGNAME=	lxnb-0.4

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	http://ns2.crw.se/~tm/projects/lxnb/
DISTNAME=	linux-netbus-client-v0.4
EXTRACT_SUFX=	.tgz

WRKSRC=		${WRKDIR}/${PKGNAME}

NO_CONFIGURE=	yes

pre-build:
	rm -f ${WRKSRC}/lxnetbus

.include <bsd.port.mk>
