# $OpenBSD: Makefile,v 1.27 2016/03/19 21:18:38 naddy Exp $

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.8
MAINTAINER=	William Yodlowsky <william@openbsd.org>
REVISION=	0

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
