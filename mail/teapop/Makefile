# $OpenBSD: Makefile,v 1.5 2004/08/09 14:08:49 xsa Exp $

COMMENT=		"POP3-server virtual domain support"

VERSION=		0.3.5
DISTNAME=		teapop-${VERSION}
CATEGORIES=		mail

HOMEPAGE=		http://www.toontown.org/teapop/

MAINTAINER=		Lurene Grenier <lurene@daemonkitty.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		ftp://ftp.toontown.org/pub/teapop/		

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-flock
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

NO_REGRESS=		Yes
			
.include <bsd.port.mk>
