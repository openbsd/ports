# $OpenBSD: Makefile,v 1.8 2002/09/03 05:45:22 mark Exp $

COMMENT=	"PGP packet visualizer"

DISTNAME=	pgpdump-0.17
CATEGORIES=    	security

HOMEPAGE=	http://pgp.iijlab.net/pgpdump.html

MAINTAINER=	Mark Grimes <mark@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://pgp.iijlab.net/pub/pgp/tools/

CONFIGURE_STYLE=	gnu

post-install:
	@strip ${PREFIX}/bin/pgpdump

.include <bsd.port.mk>
