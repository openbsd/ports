# $OpenBSD: Makefile,v 1.8 2009/05/01 02:00:02 sthen Exp $

COMMENT=	distributed memory object caching system

DISTNAME=	memcached-1.2.8
CATEGORIES=	misc

HOMEPAGE=	http://www.danga.com/memcached/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event

MASTER_SITES=		${HOMEPAGE}/dist/
MASTER_SITES0=		http://memcached.googlecode.com/files/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-libevent=/usr

REGRESS_TARGET=		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memcached
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/memcached

.include <bsd.port.mk>
