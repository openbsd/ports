# $OpenBSD: Makefile,v 1.17 2002/12/09 15:37:24 brad Exp $

COMMENT=	"Command line arbitrary packet builder"

DISTNAME=	nemesis-1.32
CATEGORIES=	net security
MASTER_SITES=	http://jeff.wwti.com/nemesis/ \
		http://www.packetfactory.net/Projects/nemesis/

HOMEPAGE=	http://jeff.wwti.com/nemesis/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Mark Grimes <mark@stateful.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
