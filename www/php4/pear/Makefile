# $OpenBSD: Makefile,v 1.3 2003/04/03 10:29:03 avsm Exp $

COMMENT=	"collection of base classes for common PHP tasks"
PKGNAME= 	php4-pear-${V}
HOMEPAGE=	http://pear.php.net/

ALL_TARGET=	pear
CONFIGURE_ARGS= --with-pear=${PEAR_DIR} --disable-all

PATCH_LIST=	${PORTSDIR}/www/php4/core/patches/patch-* \
		patch-*

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	php::www/php4/core
NO_REGRESS=	Yes

INSTALL_TARGET=	install-pear install-headers install-build install-programs
FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR} 

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/php

.include <bsd.port.mk>
