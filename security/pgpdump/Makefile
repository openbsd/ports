# $OpenBSD: Makefile,v 1.6 2001/12/24 07:51:06 mark Exp $

COMMENT=	"PGP packet visualizer"

DISTNAME=	pgpdump-0.16
CATEGORIES=    	security
NEED_VERSION=	1.500

HOMEPAGE=	http://pgp.iijlab.net/pgpdump.html

MAINTAINER=	Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://pgp.iijlab.net/pub/pgp/tools/

CONFIGURE_STYLE=	gnu

post-install:
	@strip ${PREFIX}/bin/pgpdump

.include <bsd.port.mk>
