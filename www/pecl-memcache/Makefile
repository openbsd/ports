# $OpenBSD: Makefile,v 1.22 2014/11/06 17:13:40 sthen Exp $

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.6
REVISION=	5
MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--with-zlib-dir=/usr

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
