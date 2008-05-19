# $OpenBSD: Makefile,v 1.13 2008/05/19 22:22:24 jasper Exp $

COMMENT=		command-line WebDAV client

VERSION=		0.22.2
DISTNAME=		cadaver-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	net www

HOMEPAGE=		http://www.webdav.org/cadaver/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto curses expat readline ssl

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-ssl --with-expat --with-included-neon

.include <bsd.port.mk>
