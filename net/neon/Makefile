# $OpenBSD: Makefile,v 1.1.1.1 2002/03/19 02:56:40 lebel Exp $

COMMENT=		"HTTP and WebDAV client library, with C interface"

VERSION=		0.19.3
DISTNAME=		neon-${VERSION}
CATEGORIES=     	net www devel
NEED_VERSION=		1.513

HOMEPAGE=		http://www.webdav.org/neon/

MAINTAINER=		David Lebel <lebel@openbsd.org>

LIB_DEPENDS=		xml2.6:libxml->=2.4.8:textproc/libxml
MODULES=		iconv

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.webdav.org/neon/

NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --with-ssl --with-xml2

.include <bsd.port.mk>
