# $OpenBSD: Makefile,v 1.1.1.1 2002/03/19 01:47:06 lebel Exp $

COMMENT=		"command-line WebDAV client"

VERSION=		0.19.1
DISTNAME=		cadaver-${VERSION}
CATEGORIES=     	net www
NEED_VERSION=		1.513

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

.include <bsd.port.mk>
