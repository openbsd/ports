# $OpenBSD: Makefile,v 1.24 2015/06/23 13:44:40 giovanni Exp $

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.8
MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--with-zlib-dir=/usr

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

# A running memcached server is needed
TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && \
	cp ${FILESDIR}/connect.inc . && \
	env NO_INTERACTION=Yes TEST_PHP_EXECUTABLE=${MODPHP_BIN} ${MODPHP_BIN} ${WRKSRC}/run-tests.php -d extension=modules/memcache.so

.include <bsd.port.mk>
