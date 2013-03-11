# $OpenBSD: Makefile,v 1.23 2013/03/11 11:41:28 espie Exp $

COMMENT=	SSH remote version scanner

DISTNAME=	scanssh-2.1
REVISION =	2
CATEGORIES=	security
MASTER_SITES=	http://monkey.org/~provos/ \
		ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/scanssh/

HOMEPAGE=	http://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c event pcap dnet>=1

LIB_DEPENDS=	net/libdnet

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
