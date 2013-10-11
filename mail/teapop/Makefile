# $OpenBSD: Makefile,v 1.14 2013/10/11 23:50:01 naddy Exp $

COMMENT=		POP3-server with virtual domain support

DISTNAME=		teapop-0.3.8
CATEGORIES=		mail

HOMEPAGE=		http://www.toontown.org/teapop/

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c

MASTER_SITES=		ftp://ftp.toontown.org/pub/teapop/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-flock
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

NO_TEST=		Yes

.include <bsd.port.mk>
