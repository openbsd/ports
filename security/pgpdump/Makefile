# $OpenBSD: Makefile,v 1.16 2005/02/07 19:01:49 pvalchev Exp $

COMMENT=	"PGP packet visualizer"

DISTNAME=	pgpdump-0.20
CATEGORIES=    	security

HOMEPAGE=	http://pgp.iijlab.net/pgpdump.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=	ftp://pgp.iijlab.net/pub/pgp/tools/

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=	Yes

post-install:
	@strip ${PREFIX}/bin/pgpdump

.include <bsd.port.mk>
