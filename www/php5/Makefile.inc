# $OpenBSD: Makefile.inc,v 1.9 2006/05/21 20:46:06 aanriot Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

V=			5.1.4
DISTNAME?=		php-${V}
CATEGORIES=		www lang

MAINTAINER=		Robert Nagy <robert@openbsd.org>
HOMEPAGE=		http://www.php.net/

MASTER_SITES=		http://us2.php.net/distributions/ \
			http://se.php.net/distributions/ \
			http://no.php.net/distributions/ \
			http://uk.php.net/distributions/
MASTER_SITES0=		http://anoncvs.silihost.hu/
MASTER_SITES1=		http://www.hardened-php.net/

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
PEAR_DIR?=		${CHROOT_DIR}/pear
MODULES_SUBDIR=		lib/php/modules
MODULES_DIR=		${CHROOT_DIR}/${MODULES_SUBDIR}

.if ${USE_GCC3:L:Myes}
PHP_LDFLAGS=		-lstdc++ -lm
.endif

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.52
CONFIGURE_ENV=          CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib ${PHP_LDFLAGS}" \
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

# the hardened flavor is used by both core and extensions
FLAVORS+=		hardened
FLAVOR?=

HARDENED_V=		0.4.9
.if ${FLAVOR:L:Mhardened}
PATCHFILES=		hardening-patch-${V}-${HARDENED_V}.patch.gz:1
PATCH_DIST_STRIP=	-p1
.else
SUPDISTFILES=		hardening-patch-${V}-${HARDENED_V}.patch.gz:1
.endif

PEAR_V=			20060428
SUPDISTFILES+=		pear-${PEAR_V}
