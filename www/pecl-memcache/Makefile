# $OpenBSD: Makefile,v 1.16 2012/04/19 21:30:38 sthen Exp $

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.6
REVISION=	0
MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+=	--with-zlib-dir=/usr

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
