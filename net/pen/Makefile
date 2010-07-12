# $OpenBSD: Makefile,v 1.11 2010/07/12 22:07:40 sthen Exp $

COMMENT=		load balancer for simple TCP-based protocols

DISTNAME=		pen-0.15.0
REVISION=		0
CATEGORIES=		net
HOMEPAGE=		http://siag.nu/pen/

MASTER_SITES=		http://siag.nu/pub/pen/

MAINTAINER=		Patroklos Argyroudis <argp@ieee.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-docdir=${PREFIX}/share/doc/pen

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pen

.include <bsd.port.mk>
