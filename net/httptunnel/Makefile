# $OpenBSD: Makefile,v 1.12 2001/03/24 19:55:42 jakob Exp $

COMMENT=	HTTP tunneling utility

DISTNAME=	httptunnel-3.0.5
CATEGORIES=	net
NEED_VERSION=	1.363

MASTER_SITES=	http://www.nocrew.org/software/httptunnel/ \
		ftp://ftp.nocrew.org/pub/nocrew/unix/

HOMEPAGE=	http://www.nocrew.org/software/httptunnel/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
