# $OpenBSD: Makefile,v 1.4 2003/05/02 19:50:22 avsm Exp $

COMMENT=	"collection of base classes for common PHP tasks"
PKGNAME= 	php4-pear-${V}
HOMEPAGE=	http://pear.php.net/

PREFIX=		${CHROOT_DIR}
ALL_TARGET=	pear
CONFIGURE_ARGS= --with-pear=${PEAR_DIR} --disable-all

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	php::www/php4/core
NO_REGRESS=	Yes

INSTALL_TARGET=	install-pear install-headers install-build install-programs
FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR} 

post-patch:
	@perl -p -i.orig -e "s,OPENBSD_PEAR_ROOT,'${CHROOT_DIR}/pear',g" ${WRKSRC}/pear/PEAR/Config.php

.include <bsd.port.mk>
