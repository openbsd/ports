# $OpenBSD: Makefile,v 1.13 2003/11/02 02:28:25 margarida Exp $

COMMENT=	"PGP packet visualizer"

DISTNAME=	pgpdump-0.19
CATEGORIES=    	security

HOMEPAGE=	http://pgp.iijlab.net/pgpdump.html

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://pgp.iijlab.net/pub/pgp/tools/

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=	Yes

post-install:
	@strip ${PREFIX}/bin/pgpdump

.include <bsd.port.mk>
