# $OpenBSD: Makefile,v 1.3 2002/10/27 17:21:40 naddy Exp $

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

MASTER_SITES=		ftp://www.toontown.org/pub/teapop/		

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-flock
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes
			
.include <bsd.port.mk>
