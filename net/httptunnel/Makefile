# $OpenBSD: Makefile,v 1.19 2012/03/29 13:38:48 sthen Exp $

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

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
