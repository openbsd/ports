# $OpenBSD: Makefile,v 1.19 2003/03/27 17:41:26 pvalchev Exp $

COMMENT=	"Command line arbitrary packet builder"

DISTNAME=	nemesis-1.32
CATEGORIES=	net security
MASTER_SITES=	http://jeff.wwti.com/nemesis/ \
		http://www.packetfactory.net/projects/nemesis/

HOMEPAGE=	http://cerberus.sourcefire.com/~jeff/nemesis/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
