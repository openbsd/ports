# $OpenBSD: Makefile,v 1.20 2012/01/27 04:02:26 william Exp $

SHARED_ONLY=	Yes

COMMENT=	Alternative PHP Cache

DISTNAME=	APC-3.1.7
REVISION=	3
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/APC

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

MODULES=	lang/php

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-apc

FLAVORS=	shm
FLAVOR?=

.if ${FLAVOR:L:Mshm}
CONFIGURE_ARGS+=	--disable-apc-mmap
.endif

DESTDIRNAME=	INSTALL_ROOT

# needs PHP CLI sapi to run
NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODPHP_DO_SAMPLE=	apc
MODPHP_DO_PHPIZE=	Yes

WEBROOT=	/var/www
SUBST_VARS=	WEBROOT

post-configure:
	@perl -pi -e "s,-rpath \\$$\\(phplibdir\\),-rpath ${LOCALBASE}/lib,g" \
		${WRKSRC}/Makefile

pre-install:
	@${INSTALL_DATA_DIR} ${WRKINST}/${WEBROOT}/pecl-APC
	@${INSTALL_DATA} ${WRKSRC}/apc.php ${WRKSRC}/INSTALL \
		${WRKINST}/${WEBROOT}/pecl-APC

.include <bsd.port.mk>
