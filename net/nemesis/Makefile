# $OpenBSD: Makefile,v 1.12 2001/06/06 08:09:28 obecian Exp $

COMMENT=	"Command line arbitrary packet builder"

DISTNAME=	nemesis-1.31
CATEGORIES=	net security
NEED_VERSION=	1.364
MASTER_SITES=	http://www.packetninja.net/nemesis/ \
		http://www.packetfactory.net/Projects/nemesis/

HOMEPAGE=	http://www.packetninja.net/nemesis/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
