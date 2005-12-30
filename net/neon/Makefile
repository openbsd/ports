# $OpenBSD: Makefile,v 1.16 2005/12/30 21:48:20 steven Exp $

COMMENT=		"HTTP and WebDAV client library, with C interface"

VERSION=		0.24.7
DISTNAME=		neon-${VERSION}
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		neon	24.7
CATEGORIES=     	net www devel

HOMEPAGE=		http://www.webdav.org/neon/

LIB_DEPENDS=		xml2.6:libxml->=2.4.8:textproc/libxml
MODULES=		converters/libiconv

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto m ssl z

MASTER_SITES=		${HOMEPAGE}

USE_LIBTOOL=		Yes
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
