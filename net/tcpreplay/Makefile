# Makefile for:		tcpreplay
# Version required:	1.0
# Date created:		Oct 18 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/03/05 18:30:39 espie Exp $

DISTNAME=	tcpreplay-1.0.1

CATEGORIES=	net
NEED_VERSION=	1.223

MASTER_SITES=	http://www.anzen.com/research/nidsbench/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:net/libnet

GNU_CONFIGURE=	Yes

.include <bsd.port.mk>
