# $OpenBSD: Makefile,v 1.23 2015/06/05 06:00:22 robert Exp $

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.6
REVISION=	6
MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--with-zlib-dir=/usr

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
