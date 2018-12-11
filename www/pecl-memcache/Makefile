# $OpenBSD: Makefile,v 1.30 2018/12/11 12:33:26 sthen Exp $

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.8
REVISION=	3

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl
# no 7.x-compatible version yet
MODPECL_V=	5.6

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--with-zlib-dir=/usr

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

# A running memcached server is needed
TEST_IS_INTERACTIVE=	Yes

pre-test:
	cp ${FILESDIR}/connect.inc ${WRKSRC}

.include <bsd.port.mk>
