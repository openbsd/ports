# $OpenBSD: Makefile,v 1.9 2004/09/15 00:06:59 pvalchev Exp $

COMMENT=		"command-line WebDAV client"

VERSION=		0.22.2
DISTNAME=		cadaver-${VERSION}
CATEGORIES=     	net www

HOMEPAGE=		http://www.webdav.org/cadaver/

LIB_DEPENDS=		xml2.6:libxml->=2.4.8:textproc/libxml
MODULES=		converters/libiconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-ssl --with-xml2 --with-included-neon

.include <bsd.port.mk>
