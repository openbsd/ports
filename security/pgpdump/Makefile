# $OpenBSD: Makefile,v 1.3 2001/09/09 17:56:59 naddy Exp $

COMMENT=	"PGP packet visualizer"

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
