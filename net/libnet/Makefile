# $OpenBSD: Makefile,v 1.19 2001/02/22 07:50:22 obecian Exp $

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

# remove this incorrect symlink so bsd.port.mk does not complain about it.
post-install:
	@rm -f ${PREFIX}/lib/libpwrite

.include <bsd.port.mk>
