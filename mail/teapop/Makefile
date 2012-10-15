# $OpenBSD: Makefile,v 1.12 2012/10/15 15:06:42 sthen Exp $

COMMENT=		POP3-server with virtual domain support

DISTNAME=		teapop-0.3.8
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

USE_GROFF =		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
