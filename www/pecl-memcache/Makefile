# $OpenBSD: Makefile,v 1.28 2017/11/15 21:28:05 sthen Exp $

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.8
REVISION=	1

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--with-zlib-dir=/usr

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

# A running memcached server is needed
TEST_IS_INTERACTIVE=	Yes

pre-test:
	cp ${FILESDIR}/connect.inc ${WRKSRC}

.include <bsd.port.mk>
