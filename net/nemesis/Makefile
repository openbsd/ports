# $OpenBSD: Makefile,v 1.18 2003/02/03 06:38:22 pvalchev Exp $

COMMENT=	"Command line arbitrary packet builder"

DISTNAME=	nemesis-1.32
CATEGORIES=	net security
MASTER_SITES=	http://jeff.wwti.com/nemesis/ \
		http://www.packetfactory.net/projects/nemesis/

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
