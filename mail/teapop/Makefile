# $OpenBSD: Makefile,v 1.1.1.1 2002/06/08 05:58:24 pvalchev Exp $

COMMENT=		"POP3-server virtual domain support"

VERSION=		0.3.4
DISTNAME=		teapop-${VERSION}
CATEGORIES=		mail
NEED_VERSION=		1.531

HOMEPAGE=		http://www.toontown.org/teapop/

MAINTAINER=		Lurene Grenier <lurene@daemonkitty.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		ftp://www.toontown.org/pub/teapop/		

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-flock
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
			
.include <bsd.port.mk>
