# $OpenBSD: Makefile,v 1.12 2000/11/19 12:26:07 jakob Exp $

DISTNAME=	dante-1.1.5
CATEGORIES=	security
NEED_VERSION=	1.310

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

HOMEPAGE=	http://www.inet.no/dante/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dante
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/dante

.include <bsd.port.mk>
