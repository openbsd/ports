# $OpenBSD: Makefile,v 1.18 2010/10/18 21:41:47 espie Exp $

COMMENT=	SSH remote version scanner

DISTNAME=	scanssh-2.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	security
MASTER_SITES=	http://monkey.org/~provos/ \
		ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/scanssh/

HOMEPAGE=	http://www.monkey.org/~provos/scanssh/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event pcap

LIB_DEPENDS=	dnet.>=1::net/libdnet

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
