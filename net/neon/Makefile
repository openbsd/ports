# $OpenBSD: Makefile,v 1.7 2002/11/27 02:23:28 lebel Exp $

COMMENT=		"HTTP and WebDAV client library, with C interface"

VERSION=		0.23.5
DISTNAME=		neon-${VERSION}
CATEGORIES=     	net www devel

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/neon/macros
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/neon
.for i in README NEWS BUGS TODO THANKS
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/neon
.endfor
	cd ${WRKSRC}/macros && \
		tar cf - . | (cd ${PREFIX}/share/neon/macros; tar xf -)

.include <bsd.port.mk>
