# $OpenBSD: Makefile,v 1.23 2005/03/27 01:10:36 naddy Exp $

COMMENT=	"command line arbitrary packet builder"

DISTNAME=	nemesis-1.4
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nemesis/}

HOMEPAGE=	http://nemesis.sourceforge.net/

LIB_DEPENDS=	net.0::net/libnet

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
