# $OpenBSD: Makefile,v 1.15 2002/09/03 04:34:13 mark Exp $

COMMENT=	"Command line arbitrary packet builder"

DISTNAME=	nemesis-1.32
CATEGORIES=	net security
MASTER_SITES=	http://jeff.wwti.com/nemesis/ \
		http://www.packetfactory.net/Projects/nemesis/

HOMEPAGE=	http://jeff.wwti.com/nemesis/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Mark Grimes <mark@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
