# $OpenBSD: Makefile,v 1.3 2002/09/08 17:26:21 lebel Exp $

COMMENT=		"command-line WebDAV client"

VERSION=		0.20.5
DISTNAME=		cadaver-${VERSION}
CATEGORIES=     	net www

HOMEPAGE=		http://www.webdav.org/cadaver/

MAINTAINER=		David Lebel <lebel@openbsd.org>

LIB_DEPENDS=		xml2.6:libxml->=2.4.8:textproc/libxml
MODULES=		iconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.webdav.org/cadaver/

ALL_TARGET=		
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-ssl --with-xml2 --with-included-neon

.include <bsd.port.mk>
