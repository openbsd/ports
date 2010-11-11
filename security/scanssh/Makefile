# $OpenBSD: Makefile,v 1.19 2010/11/11 18:43:10 espie Exp $

COMMENT=	SSH remote version scanner

DISTNAME=	scanssh-2.1
REVISION =	1
CATEGORIES=	security
MASTER_SITES=	http://monkey.org/~provos/ \
		ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/scanssh/

HOMEPAGE=	http://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event pcap dnet.>=1

LIB_DEPENDS=	::net/libdnet

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
