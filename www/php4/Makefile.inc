# $OpenBSD: Makefile.inc,v 1.4 2002/07/22 16:47:33 avsm Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
ONLY_FOR_ARCHS=	alpha i386 m68k powerpc sparc sparc64

V=		4.2.2
DISTNAME=	php-${V}

CATEGORIES=	www lang

MAINTAINER=     Anil Madhavapeddy <avsm@openbsd.org>

HOMEPAGE=	http://www.php.net/

MASTER_SITES=	http://www.php.net/distributions/ \
		http://se.php.net/distributions/ \
		http://no.php.net/distributions/ \
		http://uk.php.net/distributions/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

PHP_CONFIG_FILE=	/var/www/conf
MODULES_SUBDIR=		lib/php/modules
MODULES_DIR=		${LOCALBASE}/${MODULES_SUBDIR}

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=          CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib" \
			EXTENSION_DIR=${MODULES_DIR} 
MAKE_ENV=               ${CONFIGURE_ENV}

CONFIGURE_ARGS+=	--enable-shared \
			--disable-static \
			--disable-rpath \
			--with-config-file-path=${PHP_CONFIG_FILE} \
			--enable-inline-optimization \
			--with-pic

# default included extensions
CONFIGURE_ARGS+= 	--with-openssl \
			--with-zlib 

USE_LIBTOOL=	Yes
