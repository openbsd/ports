# $OpenBSD: Makefile,v 1.20 2003/05/12 08:23:47 jolan Exp $

COMMENT=	"Command line arbitrary packet builder"

DISTNAME=	nemesis-1.32
CATEGORIES=	net security
MASTER_SITES=	http://jeff.wwti.com/nemesis/ \
		http://www.packetfactory.net/projects/nemesis/

HOMEPAGE=	http://cerberus.sourcefire.com/~jeff/nemesis/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
