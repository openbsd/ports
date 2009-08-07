# $OpenBSD: Makefile,v 1.9 2009/08/07 10:46:41 jasper Exp $

COMMENT=	distributed memory object caching system

DISTNAME=	memcached-1.4.0
CATEGORIES=	misc

HOMEPAGE=	http://www.danga.com/memcached/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event pthread

MASTER_SITES=		http://memcached.googlecode.com/files/
MASTER_SITES0=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-libevent=/usr --disable-coverage

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memcached
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/memcached

.include <bsd.port.mk>
