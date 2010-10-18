# $OpenBSD: Makefile,v 1.16 2010/10/18 16:47:00 espie Exp $

COMMENT=	Differential GPS over IP communication device

DISTNAME=	dgpsip-1.35
CATEGORIES=	astro
MASTER_SITES=	http://www.wsrcc.com/wolfgang/ftp/

HOMEPAGE=	http://www.wsrcc.com/wolfgang/gps/dgps-ip.html

MAINTAINER=	Wolfgang Rupprecht <wsr+dgpsip@wsrcc.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
