# $OpenBSD: Makefile,v 1.20 2013/01/14 22:35:04 sthen Exp $

COMMENT=	distributed memory object caching system

DISTNAME =	memcached-1.4.14
CATEGORIES=	misc

HOMEPAGE=	http://www.memcached.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c event pthread

MASTER_SITES=		http://memcached.googlecode.com/files/
MASTER_SITES0=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libevent=/usr \
			--disable-coverage \
			--disable-docs
REGRESS_TARGET=		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memcached
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/memcached

.include <bsd.port.mk>
