# $OpenBSD: Makefile,v 1.2 2001/07/06 19:34:03 jsyn Exp $

COMMENT=	a PGP packet visualizer

DISTNAME=	pgpdump-0.11
CATEGORIES=    	security
NEED_VERSION=	1.408

HOMEPAGE=	http://pgp.iijlab.net/pgpdump.html

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://pgp.iijlab.net/pub/pgp/tools/

CONFIGURE_STYLE=	gnu

post-install:
	@strip ${PREFIX}/bin/pgpdump

.include <bsd.port.mk>
