# $OpenBSD: Makefile,v 1.7 2000/06/20 20:26:01 jakob Exp $

DISTNAME=	dante-1.1.1
CATEGORIES=	security
NEED_VERSION=	1.302

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socks
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/socks

.include <bsd.port.mk>
