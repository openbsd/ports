# $OpenBSD: Makefile,v 1.13 2013/03/11 11:23:54 espie Exp $

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

USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
