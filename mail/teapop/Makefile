# $OpenBSD: Makefile,v 1.7 2005/02/14 00:35:53 pvalchev Exp $

COMMENT=		"POP3-server virtual domain support"

VERSION=		0.3.5
DISTNAME=		teapop-${VERSION}
CATEGORIES=		mail

HOMEPAGE=		http://www.toontown.org/teapop/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

MASTER_SITES=		ftp://ftp.toontown.org/pub/teapop/		

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-flock
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

NO_REGRESS=		Yes
			
.include <bsd.port.mk>
