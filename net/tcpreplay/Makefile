# Makefile for:		tcpreplay
# Version required:	1.0
# Date created:		Oct 18 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.4 2000/02/12 06:30:01 turan Exp $

DISTNAME=	tcpreplay-1.0.1

CATEGORIES=	net

MASTER_SITES=	http://www.anzen.com/research/nidsbench/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
