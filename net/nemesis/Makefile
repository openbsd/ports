# $OpenBSD: Makefile,v 1.22 2004/12/16 00:31:23 alek Exp $

COMMENT=	"command line arbitrary packet builder"

DISTNAME=	nemesis-1.4beta3
CATEGORIES=	net security
MASTER_SITES=	http://www.packetfactory.net/projects/nemesis/

HOMEPAGE=	http://cerberus.sourcefire.com/~jeff/nemesis/

LIB_DEPENDS=	net::net/libnet

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
