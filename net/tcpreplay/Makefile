# Makefile for:		tcpreplay
# Version required:	1.0
# Date created:		Oct 18 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.10 2000/10/22 14:03:37 espie Exp $

DISTNAME=	tcpreplay-1.0.1

CATEGORIES=	net
NEED_VERSION=	 1.230

MASTER_SITES=	http://www.anzen.com/research/nidsbench/

MAINTAINER=	Dug Song <dugsong@monkey.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS= --prefix='$${DESTDIR}${PREFIX}'
FAKE=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpreplay ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/tcpreplay.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
