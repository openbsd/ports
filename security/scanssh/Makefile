# $OpenBSD: Makefile,v 1.12 2004/12/27 13:28:35 alek Exp $

COMMENT=	"SSH remote version scanner"

DISTNAME=	scanssh-2.0
CATEGORIES=	security
MASTER_SITES=	http://monkey.org/~provos/ \
		ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/scanssh/

HOMEPAGE=	http://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

BUILD_DEPENDS=	dnet::net/libdnet

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
