# $OpenBSD: Makefile,v 1.18 2001/03/24 19:55:35 jakob Exp $

COMMENT=	socks client and server

ONLY_FOR_ARCHS=	i386 sparc m68k powerpc

DISTNAME=	dante-1.1.9
CATEGORIES=	security
NEED_VERSION=	1.363
MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

HOMEPAGE=	http://www.inet.no/dante/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dante
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/dante

.include <bsd.port.mk>
