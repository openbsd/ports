# $OpenBSD: Makefile,v 1.13 2001/06/24 18:41:19 obecian Exp $

COMMENT=	"Command line arbitrary packet builder"

DISTNAME=	nemesis-1.32
CATEGORIES=	net security
NEED_VERSION=	1.364
MASTER_SITES=	http://jeff.wwti.com/nemesis/ \
		http://www.packetfactory.net/Projects/nemesis/

HOMEPAGE=	http://jeff.wwti.com/nemesis/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
