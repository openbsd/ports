# $OpenBSD: Makefile.inc,v 1.22 2004/06/06 18:25:35 avsm Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

V=		4.3.7
DISTNAME=	php-${V}
CATEGORIES=	www lang

HOMEPAGE=	http://www.php.net/

MASTER_SITES=	http://us2.php.net/distributions/ \
		http://se.php.net/distributions/ \
		http://no.php.net/distributions/ \
		http://uk.php.net/distributions/

# UPGRADERS: please read BOTH the PHP and Zend licenses
# and make sure they are safe before an upgrade

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

PHP_CONFIG_PATH=	/var/www/conf
PHP_CONFIG_FILE=	${PHP_CONFIG_PATH}/php.ini

# where the main php4 module is stored (outside the chroot)
APACHE_MODULE_SUBDIR=	lib/php
APACHE_MODULE_DIR=	${LOCALBASE}/${APACHE_MODULE_SUBDIR}

# where the PEAR and extension modules are (inside the chroot)
CHROOT_DIR?=		/var/www
PEAR_DIR?=		${CHROOT_DIR}/pear
MODULES_SUBDIR=		lib/php/modules
MODULES_DIR=		${CHROOT_DIR}/${MODULES_SUBDIR}

.if defined(USE_GCC3)
PHP_LDFLAGS=		-lstdc++ -lm
.else
PHP_LDFLAGS=		# nothing for now
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

PATCH_LIST=		${PORTSDIR}/www/php4/patches/patch-* \
			patch-*
