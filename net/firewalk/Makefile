# OpenBSD makefile for:	firewalk
# Version required:	0.7
# Date created:		1998-Jan-16
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.3 1999/03/10 04:51:32 marc Exp $
#

PKGNAME=		firewalk-0.7
DISTNAME=		firewalk-final-0.7
CATEGORIES=     	net

BROKEN=			"es2.net nameserver(s) not working"
MIRROR_DISTFILE=	no

MASTER_SITES=		http://www.es2.net/research/firewalk/

MAINTAINER=		dugsong@monkey.org

GNU_CONFIGURE=		yes

WRKSRC=			${WRKDIR}/Firewalk

BUILD_DEPENDS=		${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

ALL_TARGET=		firewalk

.include <bsd.port.mk>
