# $OpenBSD: Makefile,v 1.20 2013/03/11 11:44:47 espie Exp $

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.6
REVISION=	3
MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--with-zlib-dir=/usr

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
