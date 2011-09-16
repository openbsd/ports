# $OpenBSD: Makefile,v 1.13 2011/09/16 12:00:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP interface to memcached

DISTNAME=	memcache-3.0.4
REVISION=	1
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/memcache

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

MODULES=	lang/php
BUILD_DEPENDS=	www/pear

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=	--with-zlib-dir=/usr

DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes

MODPHP_DO_SAMPLE=	memcache
MODPHP_DO_PHPIZE=	Yes

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
