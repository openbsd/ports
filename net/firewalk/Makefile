# OpenBSD makefile for:	firewalk
# Version required:	0.7
# Date created:		1998-Jan-16
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.4 1999/03/27 12:24:00 niklas Exp $
#

PKGNAME=		firewalk-0.7c
DISTNAME=		firewalk-final-0.7c
CATEGORIES=     	net

MIRROR_DISTFILE=	no

# www.es2.net does not resolve
#MASTER_SITES=		http://www.es2.net/research/firewalk/
MASTER_SITES=		ftp://ftp.technotronic.com/unix/security-tools/

MAINTAINER=		dugsong@monkey.org

# Due to 0.7c is named as .gz, but really was uncompressed!
EXTRACT_ARGS=		-xf

GNU_CONFIGURE=		yes

WRKSRC=			${WRKDIR}/Firewalk

BUILD_DEPENDS=		${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

ALL_TARGET=		firewalk

.include <bsd.port.mk>
