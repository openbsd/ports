# $OpenBSD: Makefile,v 1.21 2001/02/26 02:55:34 brad Exp $

DISTNAME=	libnet-1.0.2a
CATEGORIES=	net
NEED_VERSION=	1.305
MASTER_SITES=	http://www.packetfactory.net/libnet/dist/

HOMEPAGE=	http://www.packetfactory.net/Projects/Libnet/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/Libnet-1.0.2a

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
