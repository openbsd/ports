# $OpenBSD: Makefile,v 1.17 2007/09/15 22:36:53 merdely Exp $

COMMENT=	HTTP tunneling utility

DISTNAME=	httptunnel-3.3
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_GNU:=httptunnel/}

HOMEPAGE=	http://www.nocrew.org/software/httptunnel/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
