# $OpenBSD: Makefile.inc,v 1.27 2009/07/20 16:30:14 robert Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

V=			5.2.10
SUHOSIN_V=		0.9.27
SUHOSIN_P_V=		0.9.7

DISTNAME?=		php-${V}
CATEGORIES=		www lang

MAINTAINER=		Robert Nagy <robert@openbsd.org>
HOMEPAGE=		http://www.php.net/

MASTER_SITES=		http://us2.php.net/distributions/ \
			http://se.php.net/distributions/ \
			http://no.php.net/distributions/ \
			http://uk.php.net/distributions/
MASTER_SITES0=		http://blade2k.humppa.hu/ \
			http://download.suhosin.org/

# UPGRADERS: please read BOTH the PHP and Zend licenses
# and make sure they are safe before an upgrade
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

PHP_CONFIG_PATH=	/var/www/conf
PHP_CONFIG_FILE=	${PHP_CONFIG_PATH}/php.ini

# where the main php5 module is stored (outside the chroot)
APACHE_MODULE_SUBDIR=	lib/php
APACHE_MODULE_DIR=	${LOCALBASE}/${APACHE_MODULE_SUBDIR}

# where the PEAR and extension modules are (inside the chroot)
CHROOT_DIR?=		/var/www
MODULES_SUBDIR=		lib/php/modules
MODULES_DIR=		${CHROOT_DIR}/${MODULES_SUBDIR}

.if ${USE_GCC3:L:Myes}
PHP_LDFLAGS=		-lstdc++ -lm
.endif

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.13
CONFIGURE_ENV=          CFLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread" \
                        LDFLAGS="-L${LOCALBASE}/lib ${PHP_LDFLAGS} -pthread" \
			EXTENSION_DIR=${MODULES_DIR}
MAKE_ENV=               ${CONFIGURE_ENV}

CONFIGURE_ARGS+=	--enable-shared \
			--disable-static \
			--disable-rpath \
			--with-config-file-path=${PHP_CONFIG_PATH} \
			--enable-inline-optimization \
			--with-pic

# default included extensions
CONFIGURE_ARGS+= 	--with-openssl \
			--with-zlib

REGRESS_TARGET=		test
REGRESS_FLAGS=		NO_INTERACTION=1

CHECKSUM_FILE=		${.CURDIR}/../distinfo
PATCH_LIST=		${.CURDIR}/../patches/patch-* \
			patch-*

PSEUDO_FLAVORS+=	no_suhosin
FLAVOR?=
.if ${FLAVOR:L:Mno_suhosin}
SUPDISTFILES=		suhosin-${SUHOSIN_V}.tgz:0 \
			suhosin-patch-${V}-${SUHOSIN_P_V}-openbsd.patch.gz:0
.else
DISTFILES+=		suhosin-${SUHOSIN_V}.tgz:0
PATCHFILES=		suhosin-patch-${V}-${SUHOSIN_P_V}-openbsd.patch.gz:0
PATCH_DIST_STRIP=	-p1
CONFIGURE_ARGS+=	--enable-suhosin

pre-patch:
	@mv ${WRKDIR}/suhosin-${SUHOSIN_V} ${WRKSRC}/ext/suhosin
.endif
