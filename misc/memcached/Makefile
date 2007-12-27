# $OpenBSD: Makefile,v 1.6 2007/12/27 17:42:50 jasper Exp $

COMMENT=	distributed memory object caching system

DISTNAME=	memcached-1.2.4
CATEGORIES=	misc

HOMEPAGE=	http://www.danga.com/memcached/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event pthread

MASTER_SITES=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-libevent=/usr

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memcached
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/memcached

.include <bsd.port.mk>
