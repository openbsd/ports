# $OpenBSD: Makefile,v 1.10 2000/08/25 19:07:12 jakob Exp $

DISTNAME=	dante-1.1.2
CATEGORIES=	security
NEED_VERSION=	1.310

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dante
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/dante

.include <bsd.port.mk>
